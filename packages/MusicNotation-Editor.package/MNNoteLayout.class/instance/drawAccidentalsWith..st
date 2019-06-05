drawing
drawAccidentalsWith: aDrawer
	self accidentalsDo: [ :codePoint :line |
		aDrawer drawAndMoveCodePoint: codePoint at: line.
		aDrawer move: aDrawer font accidentalSpaceUnits ].