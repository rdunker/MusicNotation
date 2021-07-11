tests
testDiagonalBeam
	| beamDrawer measure measureMorph note1 note2 note3 |
	
	beamDrawer := MNBeamDrawer new.
	note1 := self createNoteWithDuration: (1/8) step: $c octave: 4.
	note2 := self createNoteWithDuration: (1/8) step: $d octave: 4.
	note3 := self createNoteWithDuration: (1/8) step: $e octave: 4.
	
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
	
	beamDrawer notes: note3 beam reverse.

	self assert: (beamDrawer isDiagonalOrSamePitch=true).

	self assert: (note1 noteLayout stemLength = note2 noteLayout stemLength).
	self assert: (note2 noteLayout stemLength = note3 noteLayout stemLength).