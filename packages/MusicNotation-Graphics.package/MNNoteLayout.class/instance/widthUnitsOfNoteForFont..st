calculating
widthUnitsOfNoteForFont: aFont
	| width |
	width := self widthUnitsOfAccidentalsForFont: aFont.
	width := width + (self leftWidthFor: aFont).
	width := width + (self rightWidthFor: aFont).
	^ width