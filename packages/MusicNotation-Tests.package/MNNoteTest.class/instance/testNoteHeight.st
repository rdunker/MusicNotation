tests
testNoteHeight
	"Ignore while linting"
	| bowDrawer beamDrawer symbolMorph note1 offset |
	
	offset := 2.
	bowDrawer := MNBowDrawer new.
	beamDrawer := MNBeamDrawer new.
	symbolMorph := MNSymbolMorph new.
	note1 := self createNoteWithDuration: (1/8) step: $c octave: 4.
	note1 noteLayout lines at: 1 put: (note1 noteLayout lines - offset).
	
	bowDrawer startNote: note1.
	bowDrawer endNote: note1.
		
	self assert: 40 equals: (bowDrawer noteHeight: note1) first.
	self assert: -5.0 equals: (beamDrawer noteHeight: note1) first.
	self assert: -5.0 equals: (symbolMorph noteHeight: note1) first.