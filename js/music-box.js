import { Piano } from '@tonejs/piano'
import * as Tone from 'tone'

window.onDocLoad = onDocLoad;

module.exports = {makePiano, makeEditorGrid, drawGenerated};

function onDocLoad() {
  loadTone();
  makePiano();
  makeEditorGrid();
}

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

function drawNote(grid) {
  grid.style.backgroundColor = "#fca103";
  grid.classList.add("placed");
}

function noteOnEvents(grid) {
  let [i, note] = grid.id.split("-");
  [i, note] = [parseInt(i), parseInt(note)];

  if (!grid.classList.contains("placed")) {
    playNote(notes[87-note], "+0.5")
    drawNote(grid)
  }
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
  box.innerHTML = "";
  box.style.gridTemplateRows = 'repeat(' + numRows.toString() + ', 1fr)';
  let shift = 0;
  for (let noteNum=0; noteNum<88; noteNum++) {
    const id = "piano-key-" + noteNum.toString();
    const keyContainer = document.getElementById(id)
    if ([1, 8, 13, 20, 25, 32, 37, 44, 49, 56, 61, 68, 73, 80, 85].includes(noteNum)) {
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
  numCols = Math.floor(box.offsetWidth/gridWidth);

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

function makeGeneratedGrid(generated) {
  let currentTime = 0;
  let rows = [];
  for (i=0; i<generated.length; i++) {
    let note, time, length;
    [note, time, length] = generated[i];
    currentTime += time;
    const column = Math.floor(currentTime/precision);
    if (column >= numCols) {
      break;
    }
    const row = 87 - (note - 21);
    rows.push(row);
  }
  rows.sort();
  const middleC = 44;
  // Reduce the range of rows to draw
  while (rows[rows.length-1]-rows[0] > maxNumRows) {
    console.log(rows);
    if (rows[rows.length-1] - middleC < rows[0] - middleC) {
      rows = rows.slice(1);
    } else {
      rows = rows.slice(0, -1);
    }
  }
  numRows = Math.max(rows[rows.length-1] - rows[0] + 1, 25);
  noteOffset = rows[0];
  makeEditorGrid();
  makePiano();
  return rows;
}

function drawGenerated(generated) {
  const rows = makeGeneratedGrid(generated);
  let note, time, length;
  let currentTime = 0;
  for (let i=0; i<generated.length; i++) {
    [note, time, length] = generated[i];
    currentTime += time;
    const row = 87 - (note - 21);
    const column = Math.floor(currentTime/precision);
    if (column >= numCols) {
      break;
    }
    if (rows[0] <= row && row <= rows[rows.length-1]) {
      while (length > 0 && column < numCols) {
        const grid = document.getElementById(column.toString() + "-" + row.toString());
        drawNote(grid);
        length -= 1/16;
        column += 1;
      }
    }
  }
  makeEditorGrid();
  makePiano();
}

