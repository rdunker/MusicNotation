calculating
widthForFont: aFont noteLineHeight: aNumber
	"Calculate the min width of the note"
	| width |
	self updateIfNeeded.
	
	width := aFont dotSpaceUnits + (aFont codePoint: 16rE1E7) width.
	width := width * self note numDots.
	
	width := width + (self
		ifRest: [ self widthUnitsOfRestForFont: aFont ]
		ifNote: [ self widthUnitsOfNoteForFont: aFont ]).
	
	width := width * (aFont scaleFactorForNoteLineHeight: aNumber) x.
	^ width + (aNumber / 2)