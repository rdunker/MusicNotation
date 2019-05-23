as yet unclassified
drawOn: aCanvas
	| canvas |
	[ self index < self keys size ]
		whileTrue: [
			super superDrawOn: aCanvas.
			
			self index: self index + 1.
			self codePoint: (self keys at: self index).	
				
			canvas := aCanvas asBalloonCanvas
				aaLevel: 4;
				yourself.
		
			canvas fillRectangle: ((0@150 + self position) extent: self width@1) color: Color green.
			canvas drawString: self codePoint hex at: (self bounds bottomLeft - (-10 @ 20)).
	
			MNSmuflDrawer new
				bounds: self bounds;
				canvas: canvas;
				color: Color red;
				font: MNFont bravura;
				lineHeight: 400;
				position: 50@150 + self position;
				drawCodePoint: self codePoint ].
	self abandon.