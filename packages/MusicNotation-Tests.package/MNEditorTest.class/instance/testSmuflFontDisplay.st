tests
testSmuflFontDisplay
	| drawer |
	drawer := MNSmuflDrawer new
			bounds: 50@50;
			canvas: (self currentWorld canvas
				copyClipRect: (0@0 corner: 0@0))
				asBalloonCanvas;
			color: Color red;
			font: MNFont bravura;
			lineHeight: 30;
			position: 15@25;
			yourself.
	drawer font glyphs keysDo: [ :codePoint | drawer drawCodePoint: codePoint ].