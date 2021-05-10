accessing
drawOn: aCanvas
	| canvas drawer start end project projectCanvas |
	canvas := aCanvas asBalloonCanvas
		aaLevel: 4;
		copyClipRect: self bounds.
	
	drawer := MNSmuflDrawer new
		canvas: canvas;
		color: self color;
		font: self font;
		position: self leftCenter;
		noteLineHeight: self noteLineHeight;
		drawDrawable: self drawable.
		
	start := 0@0.
	end := self extent x @ self extent y.
	
	project := self owner owner owner.
	
	projectCanvas := project canvas asBalloonCanvas
		aaLevel: 4;
		copyClipRect: self owner owner owner bounds.
	note tieStart ifTrue: [drawer drawTestOn: projectCanvas Start: ((self position x - 100) @ (self center y + (self noteLineHeight * 4))) End: (self position x @ (self center y + (self noteLineHeight * 4)))].
