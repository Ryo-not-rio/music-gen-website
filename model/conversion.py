import os

abspath = os.path.abspath(__file__)
dname = os.path.dirname(abspath)
os.chdir(dname)

from tensorflow.keras import models
import tensorflowjs as tfjs
import pickle
import json

model_name = "categorical_model"
vocab_dir = "ai3_vels_vocab.pkl"

model = models.load_model(model_name)
tfjs.converters.save_keras_model(model, "js-model")

with open(vocab_dir, 'rb') as f:
    data = pickle.load(f)

new_data = {k:v for k,v in enumerate(data)}
with open("vocab.json", "w") as f:
    json.dump(new_data, f)