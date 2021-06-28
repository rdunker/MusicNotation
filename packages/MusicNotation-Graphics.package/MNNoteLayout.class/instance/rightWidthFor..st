accessing
rightWidthFor: aFont
	| width|

	width := aFont lineWidthUnits.
	self rightNoteheads
		ifNotEmpty: [ width := width max: (aFont codePoint: self notehead) width].
	self flagCodePoint
		ifNotNil: [ width := width max: (aFont codePoint: self flagCodePoint) width ].
	^ width