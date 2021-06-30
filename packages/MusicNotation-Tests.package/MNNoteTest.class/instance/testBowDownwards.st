tests
testBowDownwards
	| bowDrawer stemUpNote stemDownNote |
	
	bowDrawer := MNBowDrawer new.
	stemUpNote := self createNoteWithDuration: (1/8) step: $c octave: 4.
	stemDownNote := self createNoteWithDuration: (1/8) step: $c octave: 6.
	
	bowDrawer startNote: stemUpNote.
	bowDrawer endNote: stemUpNote.

	self assert: true equals: (bowDrawer bowDownwards).
	
	bowDrawer endNote: stemDownNote.
	
	self assert: false equals: (bowDrawer bowDownwards).
	
	bowDrawer startNote: stemDownNote.
	
	self assert: false equals: (bowDrawer bowDownwards).