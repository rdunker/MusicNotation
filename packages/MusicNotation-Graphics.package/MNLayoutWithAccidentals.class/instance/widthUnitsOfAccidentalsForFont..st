calcualting
widthUnitsOfAccidentalsForFont: aFont
	| width |
	width := self accidentals size * aFont accidentalSpaceUnits.
	
	self accidentalCodePointsDo: [ :codePoint :index |
		width := width + (aFont codePoint: codePoint) width ].
	
	^ width