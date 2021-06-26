opening
openTutorial2
	^ self openContents: '"Example Script"
| notes1 |

a3  / 1.
self measure keyFifths: 5.
c4 / 4 * 4.
self measure keyCustom: {$d -> -1}.

project addPart: (MNPart new addMeasure: MNMeasure new).  
a4 + a3 / 4.  
g4 s min / 2 dot.  
d5 f maj7 / 2 dot dot.  
g4 aug / 8.  

project addPart: (MNPart new addMeasure: MNMeasure new).
notes1 := {c4 . d4 . e4 . f4}.
2 timesRepeat: [ notes1 / 4 ].
self measure transposeSharp: 2.'