import * as tf from '@tensorflow/tfjs';

function translate(arr) {
  const data = require('../model/vocab.json');
  console.log(data);
}

async function predict(start_arr) {
  const model = await tf.loadLayersModel("../model/js-model/model.json");
  input = translate(start_arr)
  console.log(model.predict(tf.tensor([start_arr])));
}

module.exports = {predict};
