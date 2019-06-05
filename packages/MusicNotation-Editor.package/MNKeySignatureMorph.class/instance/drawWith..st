as yet unclassified
drawWith: aDrawer
	self keySignature do: [ :each | 
		aDrawer drawAndMoveCodePoint: each first at: each second. 
		aDrawer move: aDrawer font accidentalSpaceUnits ].