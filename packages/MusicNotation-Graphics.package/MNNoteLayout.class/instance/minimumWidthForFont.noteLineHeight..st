calculating
minimumWidthForFont: aFont noteLineHeight: aNumber
	| width |
	self updateIfNeeded.
	
	width := aFont dotSpaceUnits + (aFont codePoint: self dot) width.
	width := width * self note numDots.
	
	width := width + (self
		ifRest: [ self widthUnitsOfRestForFont: aFont ]
		ifNote: [ self widthUnitsOfNoteForFont: aFont ]).
	
	width := width * (aFont scaleFactorForNoteLineHeight: aNumber) x.
	^ width + (aNumber / 2)