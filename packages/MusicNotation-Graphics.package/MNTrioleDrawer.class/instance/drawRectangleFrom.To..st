drawing
drawRectangleFrom: aPoint To: anExtent
	self canvas
			drawRectangle: (aPoint extent: anExtent)
			color: Color black
			borderWidth: 0
			borderColor: nil.