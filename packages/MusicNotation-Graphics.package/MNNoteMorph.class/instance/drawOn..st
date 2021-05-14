accessing
drawOn: aCanvas
	| canvas drawer start end project projectCanvas endNote endNoteMorph |
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
	
	self note tieStart ifTrue: [
		endNote := self note findNextTieStop.
		endNote ifNotNil: [
			endNoteMorph := endNote morph.
			drawer drawTestOn: projectCanvas Start: (self position x @ self center y + (self noteLineHeight * ((self noteLayout lines at: 1) + 1))) End: ((endNoteMorph position x) @ (endNoteMorph center y + (endNoteMorph noteLineHeight * 			((endNoteMorph noteLayout lines at: 1) + 1))))
		]
	].
