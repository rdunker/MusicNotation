drawing
drawDotsWith: aDrawer
	self note numDots timesRepeat: [
		aDrawer move: 50.
		self dots do: [ :line |
			aDrawer drawCodePoint: 16rE1E7 at: line ].
		aDrawer moveCodePoint: 16rE1E7 ].