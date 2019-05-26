as yet unclassified
drawVLine: start to: end
	| rect |
	rect := 0 @ start corner: self lineWidth @ end.
	rect := rect scaleBy: 1 @ self noteLineHeight.
	self canvas
		drawRectangle: (rect translateBy: self position)
		color: self color
		borderWidth: 0
		borderColor: nil.