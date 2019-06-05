accessing
draw: anInteger at: line with: aDrawer
	self codePointsOf: anInteger reverseDo: [ :codePoint |
		aDrawer move: (aDrawer font codePoint: codePoint) width negated.
		aDrawer drawCodePoint: codePoint at: line ].