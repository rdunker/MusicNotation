drawing
drawLineFrom: startPoint to: endPoint
	self canvas 
		line: startPoint
		to: endPoint
		width: self beamHeight
		color: Color black.