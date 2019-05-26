as yet unclassified
drawOn: aCanvas
	| canvas |
	super drawOn: aCanvas.
	
	canvas := aCanvas asBalloonCanvas
		aaLevel: 4;
		yourself.
		
	canvas fillRectangle: (self leftCenter extent: self width@1) color: Color green.
	canvas drawString: self codePoint hex at: (self bounds bottomLeft - (-10 @ 20)).
	
	MNSmuflDrawer new
		canvas: canvas;
		color: Color red;
		font: MNFont bravura;
		position: 22@0 + self leftCenter;
		noteLineHeight: 22;
		drawCodePoint: self codePoint.