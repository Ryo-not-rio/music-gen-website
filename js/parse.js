import * as Tone from 'tone'

window.generate = generate;

const model = require("./model");
const to_string = require("../utils/to_string.json")

function readMusicBox() {
  let loadedNotes = []
  const numCols = Math.floor(document.getElementById("music-box").offsetWidth/gridWidth);
  let prevTimeTotal = 0;
  for (let col=0; col<numCols; col++) {
    for (let row=0; row<numRows; row++) {
      const id = 'note ' + col.toString() + "-" + row.toString();
      const note = document.getElementById(id);
      if (note) {
        // TODO :: Fix this conversion
        const midiPitch = notes.indexOf(note.classList[2]) + 47
        loadedNotes.push([midiPitch, prevTimeTotal, 0.25])
        prevTimeTotal += 0.25;
      }
    }
  }
  return loadedNotes;
}

const synth = new Tone.PolySynth(Tone.Synth, {
  oscillator: {
    type: "sine",
  },
  envelope: {
    attack: 0.05,
    decay: 0.5,
    decayCurve: "exponential",
    release: 0.1,
    sustain: 0.1,
  }
}).toDestination();
synth.maxPolyphony = 50;
Tone.Destination.volume.value = -10

function convertTime(time) {
  const bars = Math.floor(time/4);
  let remainder = time - (bars*4);
  const quarters = Math.floor(remainder);
  const sixteenth = Math.floor((remainder-quarters)*16);
  return bars.toString() + ":" + quarters.toString() + ":" + sixteenth.toString();
}

function playPrediction(prediction) {
  let prevTime = 0;
  let music = []
  for (let i=0; i<prediction.length; i++) {
    let note, time, length;
    console.log(prediction[i]);
    [note, time, length] = prediction[i];
    time = prevTime + time;
    length = Math.max(Math.min(length, 8), 1/16);
    let add = {"time": convertTime(time), "note": to_string[note.toString()], "length": convertTime(length)};
    if (!music.includes(add)){
      music.push(add);
    }
    prevTime = time;
  }
  // console.log(music);
  let _ = new Tone.Part(function(time, value){
      console.log(value);
      synth.triggerAttackRelease(value.note, value.length, time);
  }, music).start(0);

  Tone.setContext(new Tone.Context({ latencyHint : "playback" }))
  Tone.Transport.timeSignature = 4;
  Tone.Transport.bpm.value = 240;
  Tone.Transport.start("+1");
}

async function generate() {
  const notes = readMusicBox();
  const prediction = await model.predict(notes, 500);
  playPrediction(prediction)
}