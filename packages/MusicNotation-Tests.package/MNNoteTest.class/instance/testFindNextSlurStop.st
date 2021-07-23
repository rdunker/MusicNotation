tests
testFindNextSlurStop
	"Ignore while linting"
	| measure measureMorph note1 note2 note3 test |
		
	note1 := self createNoteWithDuration: (1/8) step: $c octave: 4.
	note1 note slurStart: true.
		
	note2 := self createNoteWithDuration: (1/8) step: $c octave: 4.
		
	note3 := self createNoteWithDuration: (1/8) step: $c octave: 4.
	note3 note slurStop: true.
		
	measure := MNMeasure new
		addNote: note1 note;
		addNote: note2 note;
		addNote: note3 note;
		yourself.
		
	measureMorph := MNMeasureMorph measure: measure.
	measureMorph addMorph: note3.
	measureMorph addMorph: note2.
	measureMorph addMorph: note1. 
		
	test := note1 findNextSlurStop.
		
	self assert: test equals: measureMorph submorphs last.