calculating
rightStemWidth: aFont
	| width |
	width := aFont lineWidthUnits.
	width := width max: (aFont codePoint: self notehead) width.
	^ 0.0
