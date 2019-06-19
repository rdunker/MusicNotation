drawing
drawAccidentalsWith: aDrawer
	self accidentalCodePointsDo: [ :codePoint :line | aDrawer
		drawAndMoveCodePoint: codePoint at: line;
		move: aDrawer font accidentalSpaceUnits ].