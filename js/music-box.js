import { Piano } from '@tonejs/piano'
import * as Tone from 'tone'

window.onDocLoad = onDocLoad;
window.mouseMove = mouseMove;
window.releaseScroll = releaseScroll;
window.mouseScroll = mouseScroll;
window.clearBox = clearBox;

module.exports = {makeEditorGrid, drawGenerated};

function onDocLoad() {
  document.getElementById("loading-text").innerHTML = "Loading...";
  loadTone();
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
  console.log("Removing overlay");
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
    grid.classList.add("placed");
  }
}

function noteOffEvents(grid) {
  let [i, j] = grid.id.split("-");
  [i, j] = [parseInt(i), parseInt(j)];

  grid.style.backgroundColor = "";
  grid.classList.remove("placed");
}

function noteClickEvents(event) {
  if (!horizontalScrollX && !verticalScrollY) {
    if (event.buttons == 1) {
      noteOnEvents(event.currentTarget);
      gridMap.set(event.currentTarget.id, true);
    } else if (event.buttons == 2) {
      noteOffEvents(event.currentTarget);
      gridMap.set(event.currentTarget.id, false);
    } 
  }
}

function makePiano() {
  const cIndexes = [0, 12, 24, 36, 48, 60, 72, 84];
  const box = document.getElementById("piano");
  box.innerHTML = "";
  box.style.gridTemplateRows = 'repeat(' + numRows.toString() + ', 1fr)';
  let shift = 0;
  for (let noteNum=0; noteNum<88; noteNum++) {
    const id = "piano-key-" + noteNum.toString();
    const keyContainer = document.getElementById(id);

    // Correct the spacing of black and white keys
    if ([1, 8, 13, 20, 25, 32, 37, 44, 49, 56, 61, 68, 73, 80, 85].includes(noteNum)) {
      shift += 1;
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
          keyContainer.classList.add("black-key");
        }

        if (cIndexes.includes(noteNum)) {
          keyContainer.innerText = "C" + (8 - cIndexes.indexOf(noteNum)).toString();
        }
    
        box.appendChild(keyContainer);
      }
      keyContainer.style.gridRow = (noteNum - noteOffset + 1).toString() + '/' + (noteNum - noteOffset +2).toString();
    } else {
      if (keyContainer) {
        keyContainer.style.display = "none";
      }
    }
  }
}

function cleanEditorGrid() {
  let col, noteNum;
  const box = document.getElementById("editor");
  let length = box.children.length;
  for (let i=0; i<length; i++) {
    const child = box.children[i];
    [col, noteNum] = child.id.split("-");
    if (col >= columnOffset + numCols || col < columnOffset || noteNum < noteOffset || noteNum >= noteOffset + numRows) {
      box.removeChild(child);
      i--;
      length--;
    }
  }
}


function clearBox() {
  gridMap = new Map();
  const box = document.getElementById("editor");
  for (let i=0; i<box.children.length; i++) {
    const child = box.children[i];
    child.classList.remove("placed");
  }
}

function makeEditorGrid() {
  const box = document.getElementById("editor");
  numCols = Math.floor(box.offsetWidth/gridWidth);

  box.style.gridTemplateColumns = 'repeat(' + numCols.toString() + ', 1fr)';
  box.style.gridTemplateRows = 'repeat(' + numRows.toString() + ', 1fr)';

  for (let i=columnOffset; i<columnOffset+numCols; i++) {
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
        if (gridMap.get(id)) {
          gridContainer.classList.add("placed");
        }

        // Setting the horizontal borders
        gridContainer.style.borderTop = "1px solid var(--editor-bg-colour)";

        gridContainer.style.gridColumn = (i-columnOffset+1).toString() + '/' + (i-columnOffset+2).toString();
        gridContainer.style.gridRow = (j+1).toString() + '/' + (j+2).toString();
      } else if (gridContainer) {
        gridContainer.style.display = "none";
      }
    }
  }
  makePiano();
  cleanEditorGrid();
}

// Adjust the grid shown
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
    if (rows[rows.length-1] - middleC < rows[0] - middleC) {
      rows = rows.slice(1);
    } else {
      rows = rows.slice(0, -1);
    }
  }
  numRows = Math.max(rows[rows.length-1] - rows[0] + 1, 25);
  noteOffset = rows[0];
  return rows;
}


// Draw the generated notes onto the grid
function drawGenerated(generated) {
  const rows = makeGeneratedGrid(generated);
  let note, time, length;
  let currentTime = 0;
  for (let i=0; i<generated.length; i++) {
    [note, time, length] = generated[i];
    currentTime += time;
    const row = 87 - (note - 21);
    let column = Math.floor(currentTime/precision);
    while (length > 0) {
      const id = column.toString() + "-" + row.toString();
      gridMap.set(id, true);
      length -= 1/16;
      column += 1;
    }
  }
  makeEditorGrid();
}


function scrollVertically(event) {
  const rowHeight = Math.round(document.getElementById("editor").offsetHeight/numRows);
  const changeRows = Math.floor((event.clientY-verticalScrollY)/rowHeight);
  if (changeRows != 0) {
    if (changeRows > 0) { // Dragged down
      noteOffset = Math.max(0, noteOffset - changeRows);
    } else if (changeRows < 0) { // Dragged up
      noteOffset = Math.min(87-numRows+1, noteOffset - changeRows);
    }
    verticalScrollY = event.clientY;
    document.body.style.cursor="ns-resize";
    makeEditorGrid();
  }  
}

function scrollHorizontally(event) {
  const precision = gridWidth;
  const changeCols = Math.floor((event.clientX-horizontalScrollX)/precision);
  if (changeCols != 0) {
    if (changeCols > 0) { // Dragged right
      columnOffset = Math.max(0, columnOffset-changeCols);
    } else if (changeCols < 0) { // Dragged left
      columnOffset -= changeCols;
    }

    horizontalScrollX = event.clientX;
    document.body.style.cursor="ew-resize";
    makeEditorGrid();
  }
}

function mouseMove(event) {
  if (verticalScrollY != 0) scrollVertically(event);
  if (horizontalScrollX != 0) scrollHorizontally(event);
}

function mouseScroll(event) {
  if (event.deltaX == 0 && event.deltaY == 0) return;
  if (Math.sign(event.deltaX) > 0) { // Scroll left
     columnOffset++;
  
    } else if (Math.sign(event.deltaX) < 0) { // right
    if (columnOffset > 0) columnOffset--;
  
  } else if(Math.sign(event.deltaY) > 0) { // Scroll down
    if (noteOffset + numRows - 1 < 87) noteOffset++;

  } else if(Math.sign(event.deltaY) < 0 && noteOffset > 0) noteOffset--; // up
  makeEditorGrid();
}

function releaseScroll() {
  verticalScrollY=0;
  horizontalScrollX=0;
  document.body.style.cursor = null;
}