tests
testBeamThreeNotes
	"Ignore while linting"
	| measure measureMorph note1 note2 note3 |
		
	note1 := self createNoteWithDuration: (1/8) step: $c octave: 4.
	note2 := self createNoteWithDuration: (1/8) step: $c octave: 4.
	note3 := self createNoteWithDuration: (1/8) step: $c octave: 4.
		
	measure := MNMeasure new
		addNote: note1 note;
		addNote: note2 note;
		addNote: note3 note;
		yourself.
		
	measureMorph := MNMeasureMorph measure: measure.
	measureMorph addMorph: note3.
	measureMorph addMorph: note2.
	measureMorph addMorph: note1. 
	
	note3 setupBeamVariables.
	note2 setupBeamVariables.
	note1 setupBeamVariables.
	
	self assert: (note1 beam size = 1).
	self assert: (note2 beam size = 1).
	self assert: (note3 beam size = 3).
	
	self assert: (note1 beam first = note1).
	self assert: (note2 beam first = note2).
	self assert: (note3 beam first = note3).
	self assert: (note3 beam second = note2).
	self assert: (note3 beam third = note1).