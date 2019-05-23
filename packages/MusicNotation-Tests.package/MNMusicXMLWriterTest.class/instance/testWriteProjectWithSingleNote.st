tests
testWriteProjectWithSingleNote
	| project part measure note parsedProject parsedNote xml |

	project := MNProject new.
	part := MNPart new.
	measure := MNMeasure new.
	note := MNNote new.
	
	project addPart: part.
	part addMeasure: measure.
	measure addNote: note.
	note duration: 4/4.
	note addPitch: (MNPitch new
		step: 'c';
		octave: 4;
		alter: 1;
		yourself).

	xml := MNMusicXMLWriter writeProject: project.
	parsedProject := MNMusicXMLParser parseFrom: xml.

	self assert: 1 equals: parsedProject parts size.
	self assert: 1 equals: parsedProject parts first measures size.
	self assert: 1 equals: parsedProject parts first measures first notes size.

	parsedNote := parsedProject parts first measures first notes first.

	self assert: 4/4 equals: parsedNote duration.
	self assert: 1 equals: parsedNote pitches size.
	self assert: $c equals: parsedNote pitches first step.
	self assert: 4 equals: parsedNote pitches first octave.
	self assert: 1 equals: parsedNote pitches first alter.
