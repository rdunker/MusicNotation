opening
openTutorial3
	^ self openContents: '"Example Script"
| coolBass |

"set key"
self measure keyFifths: 2.

"enter notes"
c4 / 4 * 4.
e4 / 4.
f4s / 8 * 2.
f4s / 4.
f4s / 2.
e4 / 4* 3.
e4 / 4.
g4 / 8 * 2.
g4 / 4.
g4 / 2.
f4s / 4* 3.
e4 / 4.
f4s / 8 * 2.
f4s / 4.
f4s / 2.
e4 / 4* 3.
e4 / 4.
g4 / 8 * 2.
g4 / 4.
g4 / 8.
g4 / 4.
f4s / 4.
f4 / 8.
f5 / 8.
e5 / 2 dot.
e5 / 4.
b4 / 4.
"easy way to create chords"
e3 + g3 + b3 + f4s / 1.
e3 + g3 + b3 + f4s / 1.

"change time signature"
self measure timeNumerator: 5 denominator: 4.

"add new track"
project addPart: (MNPart new addMeasure: MNMeasure new).  self measure keyFifths: 2.

"change clef"
self measure clef:( MNClef new sign: $f; line: 4).

"create pattern"
coolBass := {b2 . e1 . c3 . e1 . c3s . e1 . c3 . e1}.
2 timesRepeat: [ coolBass / 4].

"play the song"
project asSound play'