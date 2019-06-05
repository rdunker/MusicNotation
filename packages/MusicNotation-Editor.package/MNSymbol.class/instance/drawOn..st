as yet unclassified
drawOn: aCanvas

	| canvas drawer |
	self flag: #todo. "Remove background (only used for debugging)"
	aCanvas fillRectangle: self bounds fillStyle: Color veryVeryLightGray.
	
	canvas := aCanvas asBalloonCanvas
		aaLevel: 4;
		copyClipRect: self bounds.
	
	drawer := MNSmuflDrawer new
		canvas: canvas;
		color: self color;
		font: self font;
		position: self leftCenter;
		noteLineHeight: self noteLineHeight;
		yourself.
	
	self codePointsAndOffsets 
		do: [ :each |
			drawer 	drawCodePoint: each first at: each second ]
