accessing
widthUnitsOfNoteForFont: aFont
	| width |
	width := 0.
	self leftNoteheads
		ifNotEmpty: [ width := width + (aFont codePoint: self notehead) width ].
	width := width + ((self rightNoteheads
			ifEmpty: [ self flagCodePoint ]
			ifNotEmpty: [ self notehead ])
		ifNil: [ aFont lineWidthUnits ]
		ifNotNilDo: [ :codePoint | (aFont codePoint: codePoint) width ]).
	^ width