const musicBox = require("./music-box.js");

window.sliderChange = sliderChange;
window.updateSlider = updateSlider;
window.tempChange = tempChange;

function sliderChange(value) {
  value = parseInt(value);
  const rowsChange = 88-value-numRows;

  numRows = 88-value;
  if (Math.abs(rowsChange) == 1) {
    if (numRows % 2 == 0) {
      if (rowsChange > 0) {
        if (noteOffset > 0) {
          noteOffset--;
        }
      } else {
        if (noteOffset + numRows - 1 < 87) {
          noteOffset++;
        }
      }
    }
  } else {
    noteOffset = Math.max(0, Math.min(87-numRows+1, noteOffset - Math.floor(rowsChange/2)));
  }
  musicBox.makeEditorGrid();
}

function updateSlider(value) {
  const slider = document.getElementById("size-slider");
  const current = parseInt(slider.value);
  if (5 <= current + value <= 88) {
    slider.value = (current+value).toString();
    sliderChange(slider.value);
  }
}

function tempChange(value, textId) {
  const textDiv = document.getElementById(textId);
  textDiv.innerText = value;
}