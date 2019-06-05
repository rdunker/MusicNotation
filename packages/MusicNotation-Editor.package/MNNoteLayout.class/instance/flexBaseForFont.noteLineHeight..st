accessing
flexBaseForFont: aFont noteLineHeight: aNumber
	| width |
	self updateIfNeeded.
	
	width := aFont dotSpaceUnits + (aFont codePoint: 16rE1E7) width.
	width := width * self note numDots.
	
	width := width + (self lines
		ifEmpty: [ self widthUnitsOfRestForFont: aFont ]
		ifNotEmpty: [ self widthUnitsOfNoteForFont: aFont ]).
	
	width := width * (aFont scaleFactorForNoteLineHeight: aNumber) x.
	^ width + (aNumber / 2)