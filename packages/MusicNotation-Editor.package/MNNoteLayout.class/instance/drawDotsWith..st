drawing
drawDotsWith: aDrawer
	self note numDots timesRepeat: [
		aDrawer move: aDrawer font dotSpaceUnits.
		self dots do: [ :line |
			aDrawer drawCodePoint: 16rE1E7 at: line ].
		aDrawer moveCodePoint: 16rE1E7 ].