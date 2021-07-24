import * as tf from '@tensorflow/tfjs';
import { range, time } from '@tensorflow/tfjs';

function translate(arr) {
  const matrix = [Array(256).fill(-1)];
  for (let i=0; i<arr.length; i++) {
    const ev = arr[i];
    const note = ev[0];
    const vel = ev[1]/128;
    const time = ev[2];
    const length = ev[3];
    const nextMatrix = [...matrix[matrix.length-1]];
    for (let j=0; j<nextMatrix.length; j++) {
      const x = nextMatrix[j];
      if (j % 2 == 0) {
        if (x-time > 0) {
          nextMatrix[j] = x-time;
        } else {
          nextMatrix[j] = 0;
          nextMatrix[j+1] = 0;
        }
      }
    }
    nextMatrix[note*2] = Math.max(nextMatrix[note*2], length);
    if (nextMatrix[note * 2] > 0) {
      nextMatrix[note * 2 + 1] = vel;
    }
    matrix.push(nextMatrix);
  }
  return matrix;
}

async function predict(startArr, num=1, temp=0.8) {
  const vocabs = require('../model/vocab.json');
  const model = await tf.loadLayersModel("../model/js-model/model.json");
  let inputEval = translate(startArr);
  inputEval = tf.tensor([inputEval])
  let generated = [];

  for (let i=0; i<num; i++) {
    const predictions = model.predict(inputEval);

    let notePredict, velPredict, timePredict, lengthPredict;
    [notePredict, velPredict, timePredict, lengthPredict] = predictions;

    notePredict = tf.squeeze(notePredict, 0).div(temp);
    velPredict = tf.squeeze(velPredict, 0).div(temp);
    timePredict = tf.squeeze(timePredict, 0).div(temp);
    lengthPredict = tf.squeeze(lengthPredict, 0).div(temp);
    
    let noteId = tf.multinomial(notePredict, 1).arraySync();
    let velId = tf.multinomial(velPredict, 1).arraySync();
    let timeId = tf.multinomial(timePredict, 1).arraySync();
    let lengthId = tf.multinomial(lengthPredict, 1).arraySync();
    noteId = noteId[noteId.length-1][0];
    velId = velId[velId.length-1][0];
    timeId = timeId[timeId.length-1][0];
    lengthId = lengthId[lengthId.length-1][0];

    const note = vocabs[0][noteId], vel = vocabs[1][velId], time=vocabs[2][timeId], length=vocabs[3][lengthId];

    inputEval = tf.squeeze(inputEval, 0).arraySync();
    inputEval = inputEval[inputEval.length - 1];
    for (let j=0; j<inputEval.length; j+=2) {
      const x = inputEval[j];
      if (x - time > 0) {
        inputEval[j] = x - time;
      } else {
        inputEval[j] = 0;
        inputEval[j + 1] = 0; 
      }
    }
    
    inputEval[note * 2] = Math.max(inputEval[note * 2], length);
    inputEval[note * 2 + 1] = vocabs[1].indexOf(vel);

    inputEval = tf.expandDims(tf.tensor([inputEval]), 0);

    const add = [note, vel, time, length]
    if (!add.includes(-1)) {
      generated.push(add)
    } else {
      num++;
    }
  }
  return generated;
}

module.exports = {predict};
