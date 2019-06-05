drawing
drawCurrentShape
	self canvas
		drawGeneralBezierShape: self shape
		color: self color
		borderWidth: 0
		borderColor: Color transparent.