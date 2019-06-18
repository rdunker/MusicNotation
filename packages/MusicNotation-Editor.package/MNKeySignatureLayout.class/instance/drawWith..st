drawing
drawWith: aDrawer
	super drawWith: aDrawer.
	
	self accidentalCodePointsDo: [ :line :codePoint |
		aDrawer
			drawAndMoveCodePoint: codePoint at: line;
			move: aDrawer font accidentalSpaceUnits ].