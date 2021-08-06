drawing
draw
	self drawNumber.
	
	(self startNote note isEighthOrShorter) ifFalse: [
		self drawLeftCorner.
		self drawRightCorner].