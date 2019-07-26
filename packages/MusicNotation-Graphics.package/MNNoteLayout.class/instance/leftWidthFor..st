accessing
leftWidthFor: aFont
	^ self leftNoteheads
		ifEmpty: [ 0 ]
		ifNotEmpty: [ (aFont codePoint: self notehead) width - aFont lineWidthUnits ]