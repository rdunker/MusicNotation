as yet unclassified
drawHLine: line width: width
	| rect |
	rect := 0 @ (line * self noteLineHeight) extent: (width * self fontScale x) @ self lineWidth.
	rect := rect insetBy: (self noteLineHeight / -4) @ 0.
	self canvas
		drawRectangle: (rect translateBy: self position)
		color: self color
		borderWidth: 0
		borderColor: nil.