accessing
drawWith: aDrawer
	aDrawer drawCodePoint: self topCodePoint at: -1.
	aDrawer drawCodePoint: self bottomCodePoint at: 1.