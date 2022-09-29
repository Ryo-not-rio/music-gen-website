import * as Tone from 'tone'
import { Piano } from '@tonejs/piano'

window.generate = generate;
window.playBox = playBox;
window.clearBox = clearBox;

const musicBox = require("./music-box.js");
const model = require("./model");
const to_string = require("../utils/to_string.json")

// create the piano
const piano = new Piano({
  maxPolyphony: 30
})
piano.toDestination()
const loadPiano = piano.load();

function resetBox() {
  Tone.Transport.stop();
  Tone.Transport.cancel();
  const overlay = document.getElementById("play-overlay");
  columnOffset = 0;
  overlay.style.display = "none";
  overlay.style.gridColumnStart = 1;
  overlay.style.gridColumnEnd = 2;
  musicBox.makeEditorGrid();
}

function clearBox() {
  resetBox();
  gridMap = new Map();
  const box = document.getElementById("editor");
  for (let i=0; i<box.children.length; i++) {
    const child = box.children[i];
    child.classList.remove("placed");
  }
}

function readMusicBox() {
  let loadedNotes = [] // array of [pitch, time, length] where 0.25 indicates a quarter note

  let prevTime = 0;
  console.log(gridMap)
  console.log(Math.max(...[...gridMap.keys()].map(key => parseInt(key.split("-")[0]))))
  for (let col=0; col<=Math.max(...[...gridMap.keys()].map(key => parseInt(key.split("-")[0]))); col++) {
    let placed = false;
    if (col > 0) {
      prevTime += precision;
    }
    for (let row=0; row<88; row++) {
      const note = document.getElementById(col.toString() + "-" + row.toString());
      console.log(note)
      if (note && note.classList.contains("placed")) {
        const pitch = 21 + 87-row;
        if (col > 0) {
          const prevNote = document.getElementById((col-1).toString()+"-"+row.toString());
          if (prevNote && prevNote.classList.contains("placed")) { // if extending an existing note
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
  return loadedNotes;
}

function playBox() {
  resetBox();
  const notes = readMusicBox();
  console.log(notes)
  playNotes(notes);
}

function convertTime(time) {
  return "0:0:"+Math.round(time*16).toString();
}

function loopEvent(count) {
  if (count > 0) {
    if (count < 7) {
      const overlay = document.getElementById("play-overlay");
      overlay.style.gridColumnStart++;
      overlay.style.gridColumnEnd++;
    } else {
      columnOffset++;
      musicBox.makeEditorGrid();
    }
  }
}

function playNotes(notes) {
  Tone.start();
  playing = true;

  Tone.Transport.timeSignature = 4;
  Tone.Transport.bpm.value = 120;
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

  let loopCount = 0;
  let shiftLoop = new Tone.Loop((time) => {
    loopEvent(loopCount);
    loopCount++;
  }, "16n");

  let keyDownEvents = new Tone.Part(function(time, value){
      piano.keyDown({note: value.note, time: time, velocity: 0.4});
  }, musicOns)

  let keyUpEvents = new Tone.Part(function(time, value) {
    piano.keyUp({note: value.note, time: time});
  }, musicOffs)

  keyDownEvents.context._context.resume();
  keyUpEvents.context._context.resume();
  shiftLoop.start("+1");
  keyDownEvents.start("+1");
  keyUpEvents.start("+1");

  // clean up
  Tone.Transport.schedule((time) => {
    shiftLoop.stop();
    resetBox();
  }, Tone.Time(musicOffs[musicOffs.length-1]["time"]).toSeconds()+1);

  Tone.Transport.start("+1");

  columnOffset = 0;
  document.getElementById("play-overlay").style.display = "block";
}

async function generate() {
  const noteTemp = parseFloat(document.getElementById("note-temp-slider").value);
  const timeTemp = parseFloat(document.getElementById("time-temp-slider").value);
  const lengthTemp = parseFloat(document.getElementById("length-temp-slider").value);

  const overlay = document.getElementById("loading-overlay");
  const overlayText = document.getElementById("loading-text");
  overlayText.innerHTML = '<div style="font-size: 5vw; color:#00ccff; grid-row: 2/-2; grid-column: 1/-1;">Generating...</div>';
  overlay.style.display = "grid";

  const notes = readMusicBox();
  const prediction = await model.predict(notes, 250, noteTemp, timeTemp, lengthTemp);
  overlay.style.display = "none";
  musicBox.drawGenerated(prediction);
  playNotes(prediction);
}
