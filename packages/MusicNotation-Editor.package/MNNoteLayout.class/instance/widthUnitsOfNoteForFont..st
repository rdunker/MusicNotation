calculating
widthUnitsOfNoteForFont: aFont
	| width |
	width := 0.
	self accidentalsDo: [ :codePoint :index |
		width := width + (aFont codePoint: codePoint) width.
		width := width + aFont accidentalSpaceUnits ].
	
	width := width + (self leftWidthFor: aFont).
	width := width + (self rightWidthFor: aFont).
	^ width