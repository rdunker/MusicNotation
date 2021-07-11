tests
testIgnoreBeam
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
	
	measureMorph submorphs do: [ :noteMorph | noteMorph setupBeamVariables ].
	
	self assert: (note1 ignoreBeam).
	self assert: (note2 ignoreBeam).
	self assert: (note3 ignoreBeam=false).