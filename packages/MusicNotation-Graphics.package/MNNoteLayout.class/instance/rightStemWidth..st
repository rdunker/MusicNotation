calculating
rightStemWidth: aFont
	| width |
	width := aFont lineWidthUnits.
	width := width max: (aFont codePoint: self notehead) width.
	^ width/2
