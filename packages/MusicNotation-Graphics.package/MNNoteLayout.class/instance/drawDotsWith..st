drawing
drawDotsWith: aDrawer
	self note numDots timesRepeat: [
		aDrawer move: aDrawer font dotSpaceUnits.
		self dots do: [ :line |
			aDrawer drawCodePoint: self dot at: line ].
		aDrawer moveCodePoint: self dot ].