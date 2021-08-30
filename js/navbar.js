const musicBox = require("./music-box.js");

window.sliderChange = sliderChange;
window.updateSlider = updateSlider;
window.tempChange = tempChange;

function sliderChange(value) {
  value = parseInt(value);
  const rowsChange = 88-value-numRows;
  if (Math.abs(rowsChange) == 1) {
    if (numRows % 2 == 0) {
      if (rowsChange > 0) {
        noteOffset--;
      } else {
        noteOffset++;
      }
    }
  } else {
    noteOffset = noteOffset - Math.floor(rowsChange/2);
  }
  
  numRows = 88-value;

  musicBox.makePiano();
  musicBox.makeEditorGrid();
}

function updateSlider(value) {
  const slider = document.getElementById("size-slider");
  const current = parseInt(slider.value);
  if (5 <= current + value <= 88) {
    slider.setAttribute("value", current+value);
    sliderChange(slider.value);
  }
}

function tempChange(value, textId) {
  const textDiv = document.getElementById(textId);
  textDiv.innerText = value;
}