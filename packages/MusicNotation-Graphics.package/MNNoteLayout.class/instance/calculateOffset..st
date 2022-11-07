calculating
calculateOffset: aMNNote
	| heightFactor baseHeightOffset |
	
	heightFactor := 25.
	baseHeightOffset := 2100.

	^ baseHeightOffset + (heightFactor * aMNNote morph noteLineHeight * self noteHeight)