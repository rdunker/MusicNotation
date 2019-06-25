accessing
rightWidthFor: aFont
	"The width of the part to the right of the stem (including the stam)"
	| width |
	width := aFont lineWidthUnits.
	self rightNoteheads
		ifNotEmpty: [ width := width max: (aFont codePoint: self notehead) width ].
	self flagCodePoint
		ifNotNil: [ width := width max: (aFont codePoint: self flagCodePoint) width ].
	^ width