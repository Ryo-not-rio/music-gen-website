import * as Tone from 'tone'
import { Piano } from '@tonejs/piano'
import { math } from '@tensorflow/tfjs-core';

window.generate = generate;
window.playBox = playBox;

const musicBox = require("./music-box.js");
const model = require("./model");
const to_string = require("../utils/to_string.json")

// create the piano and load 5 velocity steps
const piano = new Piano({
  maxPolyphony: 30
})
piano.toDestination()
const loadPiano = piano.load();


// TODO :: FIX
function readMusicBox() {
  let loadedNotes = [] // array of [pitch, time, length] where 0.25 indicates a quarter note
  let prevTime = 0;
  for (let col=0; col<numCols; col++) {
    let placed = false;
    if (col > 0) {
      prevTime += precision;
    }
    for (let row=0; row<88; row++) {
      const note = document.getElementById(col.toString() + "-" + row.toString());
      if (note && note.classList.contains("placed")) {
        const pitch = 21 + 87-row;
        if (col > 0) {
          const prevNote = document.getElementById((col-1).toString()+"-"+row.toString());
          if (prevNote.classList.contains("placed")) { // if extending an existing note
            // find the actual previous note in loadedNotes array and increase length
            for (let i=loadedNotes.length-1; i>=0; i--) {
              if (loadedNotes[i][0] == pitch) {
                loadedNotes[i][2] += precision;
                break;
              }
            }
          } else {
            loadedNotes.push([pitch, prevTime, precision]);
            prevTime = 0;
            placed = true;
          }
        } else {
          loadedNotes.push([pitch, prevTime, precision]);
          prevTime = 0;
          placed = true;
        }
      }
    }
  }
  console.log("LOADED: ", loadedNotes)
  return loadedNotes;
}

function playBox() {
  const notes = readMusicBox();
  playNotes(notes);
}

function convertTime(time) {
  return "0:0:"+Math.round(time*16).toString();
}

function playNotes(notes) {
  Tone.Transport.stop();
  Tone.Transport.cancel();
  Tone.Transport.position = 0;
  
  let prevTime = 0;
  let musicOns = [];
  let musicOffs = [];
  for (let i=0; i<notes.length; i++) {
    let note, time, length;
    [note, time, length] = notes[i];
    time = prevTime + time;
    length = time + length;
    let on = {"time": convertTime(time), "note": to_string[note.toString()]};
    let off = {"time": length, "note": to_string[note.toString()]};
    musicOns.push(on);
    let addedOff = false;
    for (let j=0; j<musicOffs.length; j++) {
      const currentOff = musicOffs[j];
      if (off["time"] <= currentOff["time"]) {
        musicOffs.splice(j, 0, off);
        addedOff = true;
        break;
      }
    }
    if (!addedOff) {
      musicOffs.push(off);
    }
    prevTime = time;
  }
  for (let j=0; j<musicOffs.length; j++) {
    musicOffs[j]["time"] = convertTime(musicOffs[j]["time"])
  }
  // console.log(musicOns);
  // console.log(musicOffs);
  let keyDownEvents = new Tone.Part(function(time, value){
      piano.keyDown({note: value.note, time: time, velocity: 0.4});
  }, musicOns)

  let keyUpEvents = new Tone.Part(function(time, value) {
    piano.keyUp({note: value.note, time: time});
  }, musicOffs)
  keyDownEvents.start(1);
  keyUpEvents.start(1);

  // Tone.setContext(new Tone.Context({ latencyHint : "playback" }))
  Tone.Transport.timeSignature = 4;
  Tone.Transport.bpm.value = 120;
  Tone.Transport.start();
}

async function generate() {
  const noteTemp = parseFloat(document.getElementById("note-temp-slider").value);
  const timeTemp = parseFloat(document.getElementById("time-temp-slider").value);
  const lengthTemp = parseFloat(document.getElementById("length-temp-slider").value);

  const overlay = document.getElementById("loading-overlay");
  const overlayText = document.getElementById("loading-text");
  overlayText.innerText = "Generating...";
  overlay.style.display = "grid";

  const notes = readMusicBox();
  const prediction = await model.predict(notes, 500, noteTemp, timeTemp, lengthTemp);
  console.log(prediction);
  overlay.style.display = "none";
  musicBox.drawGenerated(prediction);
  playNotes(prediction);
}
