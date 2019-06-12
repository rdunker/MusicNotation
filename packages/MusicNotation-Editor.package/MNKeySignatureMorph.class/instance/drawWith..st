drawing
drawWith: aDrawer
	self keySignatureCodePointsDo: [ :codePoint :line |
		aDrawer drawAndMoveCodePoint: codePoint at: line.
		aDrawer move: aDrawer font accidentalSpaceUnits ].