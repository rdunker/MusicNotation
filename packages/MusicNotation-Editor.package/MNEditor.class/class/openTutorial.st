opening
openTutorial
	"Ignore while linting"
	^ self openContents: '"Tutorial - James Bond"
	
| coolBass |

"set key"
self measure keyFifths: 2.

"enter notes"
e4 / 8.
f4s / 16 * 2.
f4s / 8.
f4s / 4.
e4 / 8* 3.

e4 / 8.
g4 / 16 * 2.
g4 / 8.
g4 / 4.
f4s / 8* 3.

e4 / 8.
f4s / 16 * 2.
f4s / 8.
f4s / 4.
e4 / 8* 3.

e4 / 8.
g4 / 16 * 2.
g4 / 8.
g4 / 4.
g4 / 8.
f4s / 8.
f4 / 8.

f5 / 8.
e5 / 4 dot.
e5 / 8.
b4 / 8.
a4 / 8.

b4 / 2.

"easy way to create chords"
e3 + g3 + b3 + f4s / 1.
e3 + g3 + b3 + f4s / 2.

"change time signature"
self measure timeNumerator: 5 denominator: 4.

"add new track"
self measure keyFifths: 2.

"change clef"
self measure clef:( MNClef new sign: $f; line: 4).

"create pattern"
coolBass := {b2 . e1 . c3 . e1 . c3s . e1 . c3 . e1}.
"2 timesRepeat: [ coolBass / 4]."

"play the song"
 project asSound play'