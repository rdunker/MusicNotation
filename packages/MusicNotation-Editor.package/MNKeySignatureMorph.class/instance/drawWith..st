as yet unclassified
drawWith: aDrawer
	self codePointsAndOffsets 
		do: [ :each |
			aDrawer drawAndMoveCodePoint: each first at: each second. 
			aDrawer move: aDrawer font accidentalSpaceUnits ].
