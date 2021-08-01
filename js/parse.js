window.generate = generate;

const model = require("./model");

function readMusicBox() {
  let loadedNotes = []
  const numCols = Math.floor(document.getElementById("music-box").offsetWidth/gridWidth);
  let prevTimeTotal = 0;
  for (let col=0; col<numCols; col++) {
    for (let row=0; row<numRows; row++) {
      const id = 'note ' + col.toString() + "-" + row.toString();
      const note = document.getElementById(id);
      if (note) {
        const midiPitch = notes.indexOf(note.classList[2]) + 47
        loadedNotes.push([midiPitch, 80, prevTimeTotal, 0.25])
        prevTimeTotal += 0.25;
      }
    }
  }
  return loadedNotes;
}

async function generate() {
  const notes = readMusicBox();
  const prediction = await model.predict(notes, 3);
  console.log(prediction)
}