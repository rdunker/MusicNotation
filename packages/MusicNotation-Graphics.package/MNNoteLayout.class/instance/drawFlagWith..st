drawing
drawFlagWith: aDrawer
	self flagCodePoint ifNotNilDo: [ :flag |
		aDrawer drawCodePoint: flag at: self lines last + self stemLength ].