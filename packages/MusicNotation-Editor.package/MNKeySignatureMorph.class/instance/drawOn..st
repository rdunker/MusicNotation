as yet unclassified
drawOn: aCanvas

	| canvas drawer |
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
			drawer 	drawAndMoveCodePoint: each first at: each second. 
			drawer move: drawer font accidentalSpaceUnits ]
