accessing
widthUnitsOfNoteForFont: aFont
	| width |
	width := 0.
	self accidentalsDo: [ :codePoint :index |
		width := width + (aFont codePoint: codePoint) width.
		width := width + aFont accidentalSpaceUnits ].
	
	self leftNoteheads
		ifNotEmpty: [ width := width + (aFont codePoint: self notehead) width ].
	
	width := width + ((self rightNoteheads
			ifEmpty: [ self flagCodePoint ]
			ifNotEmpty: [ self notehead ])
		ifNil: [ aFont lineWidthUnits ]
		ifNotNilDo: [ :codePoint | (aFont codePoint: codePoint) width ]).
	
	^ width