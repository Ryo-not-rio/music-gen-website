import * as Tone from 'tone'

window.onDocLoad = onDocLoad;

const synth = new Tone.MonoSynth().toDestination();
var startedTone = false;

async function playNote(pitch) {
  if (!startedTone) {
    await Tone.start();
    startedTone = true;
  }

  synth.triggerAttackRelease(pitch, "8n");
}

function placeNote(grid) {
  const box = document.getElementById("music-box");

  let [i, j] = grid.id.split("-");
  [i, j] = [parseInt(i), parseInt(j)];
  const rowStart = j+1;

  const note = document.createElement("div");
  const pitch = notes[numRows - j - 1];
  note.className = 'note quarter ' + pitch;
  note.id = 'note ' + grid.id;

  if (!document.getElementById(note.id)) {
    playNote(pitch)

    if (j==1 || j==numRows-2) {
      note.className += ' line';
    }
    const addNum = 4; // Additional spaces to occupy to render note
    if (j < 6) {
      // Upside-down
      note.style.gridRow = rowStart.toString() + '/' + (rowStart+addNum).toString();
      note.style.transform = "scaleY(-1) scaleX(-1) translate(0px,0px)";
    } else {
      note.style.gridRow = (rowStart-addNum).toString() + '/' + rowStart.toString();
      note.style.transform = "translate(0px,15px)";
    }
  
    note.style.gridColumn = (i+1).toString() + '/' + (i+2).toString();
    box.append(note);
  }
}

function noteClickEvents(event) {
  placeNote(event.currentTarget);
}

function makeGrid() {
  const box = document.getElementById("music-box");
  const numCols = Math.floor(box.offsetWidth/gridWidth);

  box.style.gridTemplateColumns = 'repeat(' + numCols.toString() + ', 1fr)'
  box.style.gridTemplateRows = 'repeat(' + numRows.toString() + ', ' + Math.floor(box.offsetHeight/numRows).toString() + 'px)'
  for (let i=0; i<numCols; i++) {
    for (let j=0; j<numRows; j++) {
      const gridContainer = document.createElement("div");

      gridContainer.className = "grid-container";
      gridContainer.id = i.toString() + '-' + j.toString();
      gridContainer.style.gridColumn = (i+1).toString() + '/' + (i+2).toString();
      gridContainer.style.gridRow = (j+1).toString() + '/' + (j+2).toString();

      gridContainer.addEventListener("click", noteClickEvents);
      
      const grid = document.createElement("canvas");
      grid.className = 'grid-square';
      
      if (j > 2 && j < 12 && j%2 == 1) {
        const ctx = grid.getContext("2d");
        ctx.lineWidth = 10;
        ctx.beginPath();
        ctx.moveTo(0, Math.floor(grid.height/2));
        ctx.lineTo(grid.width, Math.floor(grid.height/2));
        ctx.stroke();
      }

      gridContainer.appendChild(grid);
      box.appendChild(gridContainer);
    }
  }
}

function onDocLoad() {
  makeGrid();
}

