as yet unclassified
drawOn: aCanvas
	| canvas |
	canvas := aCanvas asBalloonCanvas
		aaLevel: 4;
		copyClipRect: self bounds.
	
	MNSmuflDrawer new
		canvas: canvas;
		color: self color;
		font: self font;
		position: self leftCenter;
		noteLineHeight: self noteLineHeight;
		drawDrawable: self.
