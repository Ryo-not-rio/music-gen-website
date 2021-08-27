import * as Tone from 'tone'
import { Piano } from '@tonejs/piano'

window.generate = generate;

const model = require("./model");
const to_string = require("../utils/to_string.json")

// create the piano and load 5 velocity steps
const piano = new Piano({
  maxPolyphony: 30
})
piano.toDestination()
const loadPiano = piano.load();

function readMusicBox() {
  let loadedNotes = [] // array of [pitch, time, length] where 0.25 indicates a quarter note
  const numCols = Math.floor(document.getElementById("editor").offsetWidth/gridWidth);
  for (let col=0; col<numCols; col++) {
    for (let row=0; row<88; row++) {
      const note = document.getElementById(col.toString() + "-" + row.toString());
      if (note && note.classList.contains("placed")) {
        const pitch = 21 + 87-row;
        if (col > 0) {
          const prevNote = document.getElementById((col-1).toString()+"-"+row.toString());
          if (prevNote.classList.contains("placed")) {
            for (let i=loadedNotes.length-1; i>=0; i--) {
              if (loadedNotes[i][0] == pitch) {
                loadedNotes[i][2] += 0.0625;
                break;
              }
            }
          } else {
            loadedNotes.push([pitch, col*0.0625, 0.0625]);
          }
        } else {
          loadedNotes.push([pitch, col*0.0625, 0.0625]);
        }
      }      
    }
  }
  return loadedNotes;
}

function convertTime(time) {
  const bars = Math.floor(time/4);
  let remainder = time - (bars*4);
  const quarters = Math.floor(remainder);
  const sixteenth = Math.floor((remainder-quarters)*16);
  return bars.toString() + ":" + quarters.toString() + ":" + sixteenth.toString();
}

function playPrediction(prediction) {
  let prevTime = 0;
  let musicOns = []
  let musicOffs = []
  for (let i=0; i<prediction.length; i++) {
    let note, time, length;
    [note, time, length] = prediction[i];
    time = prevTime + time;
    length = time + Math.max(Math.min(length, 16), 1/64);
    let on = {"time": convertTime(time), "note": to_string[note.toString()]};
    let off = {"time": convertTime(length), "note": to_string[note.toString()]};
    if (!musicOns.includes(on)){
      musicOns.push(on);
    }
    if (!musicOffs.includes(off)) {
      musicOffs.push(off)
    }
    prevTime = time;
  }
  let keyDownEvents = new Tone.Part(function(time, value){
      piano.keyDown({note: value.note, time: time});
  }, musicOns)

  let keyUpEvents = new Tone.Part(function(time, value) {
    piano.keyUp({note: value.note, time: time, velocity: 0.4});
  }, musicOffs)
  keyDownEvents.start(1);
  keyUpEvents.start(1);

  Tone.setContext(new Tone.Context({ latencyHint : "playback" }))
  Tone.Transport.timeSignature = 4;
  Tone.Transport.bpm.value = 120;
  Tone.Transport.start("+1");
}

async function generate() {
  const notes = readMusicBox();
  const prediction = await model.predict(notes, 1000);
  playPrediction(prediction)
}