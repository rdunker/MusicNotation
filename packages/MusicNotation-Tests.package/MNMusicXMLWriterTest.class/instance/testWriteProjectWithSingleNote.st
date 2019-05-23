tests
testWriteProjectWithSingleNote
| project part measure note parsedProject parsedNote |

project := MNProject new.
part := MNPart new.
measure := MNMeasure new.
note := MNNote new
	duration: (Fraction numerator: 4 denominator: 4).

project addPart: part.
part addMeasure: measure.
measure addNote: note.
note addPitch: (MNPitch new
	step: 'c';
	octave: 4;
	alter: 1).

(MNMusicXMLWriter onFile: 'test.xml') writeProject: project.

parsedProject := MNMusicXMLParser parseFileNamed: 'test.xml'.

self assert: 1 equals: parsedProject parts size.
self assert: 1 equals: (parsedProject parts at: 1) measures size. 
self assert: 1 equals: ((parsedProject parts at: 1) measures at: 1) notes size. 

parsedNote := ((parsedProject parts at: 1) measures at: 1) notes at: 1.

self assert: (Fraction numerator: 4 denominator: 4) equals: parsedNote duration.
self assert: 1 equals: parsedNote pitches size.
self assert: $c equals: (parsedNote pitches at: 1) step.
self assert: 4 equals: (parsedNote pitches at: 1) octave.
self assert: 1 equals: (parsedNote pitches at: 1) alter.

FileDirectory deleteFilePath: 'test.xml'.
