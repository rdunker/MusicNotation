as yet unclassified
drawOn: aCanvas
	| canvas |
	super drawOn: aCanvas.
	
	canvas := aCanvas asBalloonCanvas
		aaLevel: 4;
		yourself.
		
	canvas fillRectangle: ((0@150 + self position) extent: self width@1) color: Color green.
	
	MNSmuflDrawer new
		bounds: self bounds;
		canvas: canvas;
		color: Color red;
		font: MNSmuflFont bravura;
		lineHeight: 400;
		position: 50@150 + self position;
		drawCodePoint: self codePoint.