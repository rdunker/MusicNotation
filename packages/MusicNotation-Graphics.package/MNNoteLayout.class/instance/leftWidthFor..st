accessing
leftWidthFor: aFont
	"The width of the part to the left of the stem"
	^ self leftNoteheads
		ifEmpty: [ 0 ]
		ifNotEmpty: [ (aFont codePoint: self notehead) width - aFont lineWidthUnits ]