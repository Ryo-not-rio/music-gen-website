import os

abspath = os.path.abspath(__file__)
dname = os.path.dirname(abspath)
os.chdir(dname)

import json

sequence = ["A", "Bb", "B", "C", "C#", "D", "Eb", "E", "F", "F#", "G", "Ab"]

to_string = {}

for i in range(21, 128):
    to_string[i] = sequence[(i-21)%12] + str((i-12)//12)

to_num = {v:k for k, v in to_string.items()}

with open('./to_string.json', 'w') as f:
    json.dump(to_string, f)
with open('./to_num.json', 'w') as f:
    json.dump(to_num, f)
