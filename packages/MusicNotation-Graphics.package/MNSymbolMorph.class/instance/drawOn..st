drawing
drawOn: aCanvas
	| balloonCanvas |
	balloonCanvas := aCanvas asBalloonCanvas
		aaLevel: 4;
		copyClipRect: self bounds.
	
	MNSmuflDrawer new
		canvas: balloonCanvas;
		color: self color;
		font: self font;
		position: self leftCenter;
		noteLineHeight: self noteLineHeight;
		drawDrawable: self drawable.
