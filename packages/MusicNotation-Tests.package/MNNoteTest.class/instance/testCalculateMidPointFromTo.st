tests
testCalculateMidPointFromTo
	| startPoint endPoint bowDrawer stemUpNote stemDownNote |
	
	startPoint := 0@0.
	endPoint := 10@10.
	bowDrawer := MNBowDrawer new.
	stemUpNote := self createNoteWithDuration: (1/8) step: $c octave: 4.
	stemDownNote := self createNoteWithDuration: (1/8) step: $c octave: 6.
	
	bowDrawer startNote: stemUpNote.
	bowDrawer endNote: stemUpNote.

	self assert: (5@(35)) equals: (bowDrawer calculateMidPointFrom: startPoint To: endPoint).
	
	bowDrawer startNote: stemDownNote.
	bowDrawer endNote: stemDownNote.
	
	self assert: (5@(-25)) equals: (bowDrawer calculateMidPointFrom: startPoint To: endPoint).