import * as tf from '@tensorflow/tfjs';

module.exports = {predict};

function translate(arr) {
  const matrix = [Array(128).fill(-1)];
  for (let i=0; i<arr.length; i++) {
    const ev = arr[i];
    const note = ev[0];
    const time = ev[1];
    const length = ev[2];
    const nextMatrix = [...matrix[matrix.length-1]];
    for (let j=0; j<nextMatrix.length; j++) {
      const x = nextMatrix[j];
      if (x-time > 0) {
        nextMatrix[j] = x-time;
      } else {
        nextMatrix[j] = 0;
      }
    }
    nextMatrix[note] = Math.max(nextMatrix[note], length);
    matrix.push(nextMatrix);
  }
  return matrix;
}

async function predict(startArr, num=1, noteTemp=0.7, timeTemp=0.8, lengthTemp=0.8) {
  const start = new Date().getTime() / 1000;
  const vocabs = require('../model/vocab.json');
  // const model = await tf.loadLayersModel("../model/js-model/model.json");
  const model = await tf.loadLayersModel("/music-gen-website/model/js-model/model.json");

  let inputEval = translate(startArr);
  inputEval = tf.tensor([inputEval], undefined,'float32')
  let generated = startArr;
  
  for (let i=0; i<num; i++) {
    const predictions = model.predict(inputEval);

    let notePredict, timePredict, lengthPredict;
    [notePredict, timePredict, lengthPredict] = predictions;
    
    notePredict = tf.squeeze(notePredict, 0).div(noteTemp);
    timePredict = tf.squeeze(timePredict, 0).div(timeTemp);
    lengthPredict = tf.squeeze(lengthPredict, 0).div(lengthTemp);
    
    let noteId = tf.multinomial(notePredict, 1).arraySync();
    let timeId = tf.multinomial(timePredict, 1).arraySync();
    let lengthId = tf.multinomial(lengthPredict, 1).arraySync();

    noteId = noteId[noteId.length-1][0];
    timeId = timeId[timeId.length-1][0];
    lengthId = lengthId[lengthId.length-1][0];

    const note = vocabs[0][noteId];
    const time = vocabs[1][timeId];
    let length = Math.max(Math.min(vocabs[2][lengthId], 16), 1/4);
    length = Math.round(length/(1/4))*(1/4)

    inputEval = tf.squeeze(inputEval, 0).arraySync();
    inputEval = inputEval[inputEval.length - 1];
    for (let j=0; j<inputEval.length; j++) {
      const x = inputEval[j];
      if (x - time > 0) {
        inputEval[j] = x - time;
      } else {
        inputEval[j] = 0;
      }
    }
    
    inputEval[note] = Math.max(inputEval[note], length);
    inputEval = tf.expandDims(tf.tensor([inputEval]), 0);

    const add = [note, time/4, length/4] // Time and length divided by 4 as 1 time = 1 beat here
    if (!add.includes(-1)) {
      generated.push(add)
    } else {
      num++;
    }

    if (new Date().getTime() / 1000 - start > 30) {
      break;
    }
  }
  return generated;
}