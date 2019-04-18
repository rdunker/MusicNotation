drawing
drawLineOn: aCanvas at: yOffset
	| offset |
	offset := 0 @ yOffset.
	aCanvas fillRectangle: ((self bounds withHeight: self borderWidth) translateBy: offset) color: self borderColor.