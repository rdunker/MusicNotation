opening
openTutorial
"Ignore while linting"

  ^ self openContents: '"Smoke On The Water"
  
| lickOne |

"set key"
self measure keyFifths: 1.

"easy way to create chords"
d4 + g4 / 4.

"set dynamics"
self setDynamics: ''mf''.

"enter notes"
f4 + a4s / 4.
g4 + c5 / 4 dot.
d4 + g4 / 8.

"create tie"
self startTie.
d4 + g4 / 8.
self stopTie.

f4 + a4s / 4.
g4s + c5s / 8.
g4 + c5 / 2.

d4 + g4 / 4.
f4 + a4s / 4.
g4 + c5 / 4 dot.
f4 + a4s / 8.
self startTie.

f4 + a4s / 8.
self stopTie.
d4 + g4 / 2 dot dot.

"add new track"
project addPart: (MNPart new addMeasure: MNMeasure new).

"change clef"
self addFClef.
self measure keyFifths: 1.

"enter notes"
g1 / 8.
self setDynamics: ''ff''.
g1 / 8.

"create pattern"
lickOne := { g1 . g1 . g1 . g1 . g1 . g1 }.
2 timesRepeat: [ lickOne / 8 ].
g1 / 8 * 2.
g1 / 8 * 2.

"create slur"
self startSlur.
a1s / 8.
self stopSlur.

self startSlur.
a1s / 8.
self stopSlur.
c2 / 8 * 2.
c2 / 8.
a1s / 8.
self startTie.

a1s / 8.
self stopTie.
g1 / 8 * 4.
e1 / 8.
f1 / 8.
f1s / 8.

"play the song"
project asSound play.'