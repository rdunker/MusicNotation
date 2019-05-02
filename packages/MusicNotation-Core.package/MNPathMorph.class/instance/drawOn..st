as yet unclassified
drawOn: aCanvas
	| canvas |
	super drawOn: aCanvas.
	
	canvas := aCanvas asBalloonCanvas
		aaLevel: 4;
		yourself.
		
	MNPathDrawer new
		drawShapeBlock: [ :shapes |
			canvas
				drawGeneralBezierShape: shapes
				color: (Color black)
				borderWidth: 1
				borderColor: (Color transparent) ];
		pathComponents: self pathComponents;
		offset: self position;
		drawAll.
