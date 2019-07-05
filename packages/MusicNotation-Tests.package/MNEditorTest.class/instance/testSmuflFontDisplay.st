tests
testSmuflFontDisplay
	| drawer |
	drawer := MNSmuflDrawer new
			canvas: self hiddenCanvas asBalloonCanvas;
			color: Color red;
			font: MNFont bravura;
			position: 15@25;
			noteLineHeight: 3;
			yourself.
	drawer font glyphs keysDo: [ :codePoint | drawer drawCodePoint: codePoint ].