tests
testIgnoreBeamSixNotes
	"Ignore while linting"
	| measure measureMorph note1 note2 note3 note4 note5 note6 |
		
	note1 := self createNoteWithDuration: (1/8) step: $c octave: 4.
	note2 := self createNoteWithDuration: (1/8) step: $c octave: 4.
	note3 := self createNoteWithDuration: (1/8) step: $c octave: 4.
	note4 := self createNoteWithDuration: (1/8) step: $c octave: 4.
	note5 := self createNoteWithDuration: (1/8) step: $c octave: 4.
	note6 := self createNoteWithDuration: (1/8) step: $c octave: 4.
		
	measure := MNMeasure new
		addNote: note1 note;
		addNote: note2 note;
		addNote: note3 note;
		addNote: note4 note;
		addNote: note5 note;
		addNote: note6 note;
		yourself.
		
	measureMorph := MNMeasureMorph measure: measure.
	measureMorph addMorph: note6.
	measureMorph addMorph: note5.
	measureMorph addMorph: note4. 
	measureMorph addMorph: note3.
	measureMorph addMorph: note2.
	measureMorph addMorph: note1. 

	note6 setupBeamVariables.
	note5 setupBeamVariables.
	note4 setupBeamVariables.
	note3 setupBeamVariables.
	note2 setupBeamVariables.
	note1 setupBeamVariables.
	
	self assert: (note1 ignoreBeam).
	self assert: (note2 ignoreBeam=false).
	self assert: (note3 ignoreBeam).
	self assert: (note4 ignoreBeam).
	self assert: (note5 ignoreBeam).
	self assert: (note6 ignoreBeam=false).