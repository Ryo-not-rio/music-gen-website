import { Piano } from '@tonejs/piano'
import * as Tone from 'tone'

window.onDocLoad = onDocLoad;

// create the piano and load 5 velocity steps
const piano = new Piano({
  velocities: 5
})
piano.toDestination()

async function loadTone() {
  await Tone.start();
  await piano.load();
  document.getElementById("loading-overlay").style.display = "none";
}

async function playNote(pitch, length) {
  piano.keyDown({note: pitch, velocity: "0.5"});
  piano.keyUp({note: pitch, time: length})
}

function noteOnEvents(grid) {
  let [i, note] = grid.id.split("-");
  [i, note] = [parseInt(i), parseInt(note)];

  if (!grid.classList.contains("placed")) {
    playNote(notes[87-note], "+0.5")
    grid.style.backgroundColor = "#fca103"
  }
  grid.classList.add("placed")
}

function noteOffEvents(grid) {
  let [i, j] = grid.id.split("-");
  [i, j] = [parseInt(i), parseInt(j)];

  grid.style.backgroundColor = ""
  grid.classList.remove("placed")
}

function noteClickEvents(event) {
  if (event.buttons == 1) {
    noteOnEvents(event.currentTarget)
  } else if (event.buttons == 2) {
    noteOffEvents(event.currentTarget)
  } 
}

function makePiano() {
  const box = document.getElementById("piano");
  box.style.gridTemplateRows = 'repeat(' + numRows.toString() + ', 1fr)';
  let shift = 0;
  for (let noteNum=0; noteNum<88; noteNum++) {
    const id = "piano-key-" + noteNum.toString();
    const keyContainer = document.getElementById(id)
    if ([1, 8, 13, 20, 25, 32, 37, 42, 47, 54, 61, 66, 73, 78, 85].includes(noteNum)) {
      shift += 1
    }
    if (noteNum >= noteOffset && noteNum < noteOffset + numRows) {
      if (keyContainer) {
        keyContainer.style.display = "block";
      } else {  
        keyContainer = document.createElement("div");
        keyContainer.className = "piano-key";
        keyContainer.id = id;
        
        if ((noteNum + shift) % 2 == 0) {
          keyContainer.classList.add("white-key");
        } else {
          keyContainer.classList.add("black-key")
        }
    
        box.appendChild(keyContainer)
      }
      keyContainer.style.gridRow = (noteNum - noteOffset + 1).toString() + '/' + (noteNum - noteOffset +2).toString();
    } else {
      if (keyContainer) {
        keyContainer.style.display = "none";
      }
    }
  }
}

function makeEditorGrid() {
  const box = document.getElementById("editor");
  const numCols = Math.floor(box.offsetWidth/gridWidth);

  box.style.gridTemplateColumns = 'repeat(' + numCols.toString() + ', 1fr)'
  box.style.gridTemplateRows = 'repeat(' + numRows.toString() + ', 1fr)'
  for (let i=0; i<numCols; i++) {
    for (let noteNum=0; noteNum<88; noteNum++) {
      let j = noteNum - noteOffset;
      const id = i.toString() + '-' + noteNum.toString();
      const gridContainer = document.getElementById(id);
      if (j >= 0 && j < numRows) {
        if (gridContainer) {
          gridContainer.style.display = "block";
        } else {
          gridContainer = document.createElement("div");
          if (i > 0 && i % 4 == 0) {
            gridContainer.style.borderLeft = "2px solid rgba(160, 160, 160, 0.5)";
          }
          gridContainer.className = "grid-container";
          gridContainer.id = id;

          gridContainer.addEventListener("mousedown", noteClickEvents);
          gridContainer.addEventListener("mouseover", noteClickEvents);
          
          box.appendChild(gridContainer);
        }
        gridContainer.style.gridColumn = (i+1).toString() + '/' + (i+2).toString();
        gridContainer.style.gridRow = (j+1).toString() + '/' + (j+2).toString();
      } else if (gridContainer) {
        gridContainer.style.display = "none";
      }
    }
  }
}

function onDocLoad() {
  loadTone();
  makePiano();
  makeEditorGrid();
}

module.exports = {makePiano, makeEditorGrid};

