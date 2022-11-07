tests
testCalculateNotePosition
	| bowDrawer stemUpNote stemDownNote |
	
	bowDrawer := MNBowDrawer new.
	stemUpNote := self createNoteWithDuration: (1/8) step: $c octave: 4.
	stemDownNote := self createNoteWithDuration: (1/8) step: $c octave: 6.
	
	bowDrawer startNote: stemUpNote.
	bowDrawer endNote: stemUpNote.
	
	self assert: (10@160) equals: (bowDrawer calculateNotePosition: stemUpNote).
	
	bowDrawer endNote: stemDownNote.
	
	self assert: (10@115) equals: (bowDrawer calculateNotePosition: stemUpNote).
	
	bowDrawer startNote: stemDownNote.
	
	self assert: (10@115) equals: (bowDrawer calculateNotePosition: stemUpNote).