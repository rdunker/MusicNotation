accessing
rightStemWidth: aFont
	| width |
	
	width := aFont lineWidthUnits.
	width := width max: (aFont codePoint: self notehead) width.
	width := width - width/2.
	^ width