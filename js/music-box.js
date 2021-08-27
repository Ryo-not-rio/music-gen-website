import { Piano } from '@tonejs/piano'
import * as Tone from 'tone'

window.onDocLoad = onDocLoad;

// create the piano and load 5 velocity steps
const piano = new Piano({
  velocities: 5
})
piano.toDestination()
var startedTone = false;
const loadPiano = piano.load();

async function playNote(pitch, length) {
  if (!startedTone) {
    await Tone.start();
    startedTone = true;
  }

  piano.keyDown({note: pitch});
  piano.keyUp({note: pitch, time: length})
}

function placeNote(grid) {
  let [i, j] = grid.id.split("-");
  [i, j] = [parseInt(i), parseInt(j)];

  if (!grid.classList.contains("placed")) {
    playNote(notes[j], "+1")
    grid.style.backgroundColor = "#fca103"
  } else {
    grid.style.backgroundColor = ""
  }
  grid.classList.toggle("placed")
}

function noteClickEvents(event) {
  placeNote(event.currentTarget);
}

function makePiano() {
  const box = document.getElementById("piano");
  let shift = 0;
  for (let i=0; i<numRows; i++) {
    const keyContainer = document.createElement("div");
    keyContainer.className = "piano-key";
    if (i != 0) {
      if (i==5 || i==12 || i==17 || i==24) {
        shift += 1
      }
    }
    
    if ((i + shift) % 2 == 0) {
      keyContainer.classList.add("white-key");
    } else {
      keyContainer.classList.add("black-key")
    }
    
    keyContainer.id = "piano-key-" + i.toString();

    keyContainer.gridRow = (i+1).toString() + '/' + (i+2).toString();

    box.appendChild(keyContainer)
  }
}

function makeEditorGrid() {
  const box = document.getElementById("editor");
  const numCols = Math.floor(box.offsetWidth/gridWidth);

  box.style.gridTemplateColumns = 'repeat(' + numCols.toString() + ', 1fr)'
  box.style.gridTemplateRows = 'repeat(' + numRows.toString() + ', 1fr)'
  for (let i=0; i<numCols; i++) {
    for (let j=0; j<numRows; j++) {
      const gridContainer = document.createElement("div");

      gridContainer.className = "grid-container";
      gridContainer.id = i.toString() + '-' + j.toString();
      gridContainer.style.gridColumn = (i+1).toString() + '/' + (i+2).toString();
      gridContainer.style.gridRow = (j+1).toString() + '/' + (j+2).toString();

      gridContainer.addEventListener("mousedown", noteClickEvents)
      gridContainer.addEventListener("mouseover", function(e) {
        if (e.buttons == 1 || e.buttons == 3) {
          noteClickEvents(e)
        }
      });
      
      box.appendChild(gridContainer);
    }
  }
}

function onDocLoad() {
  makePiano();
  makeEditorGrid();
}

