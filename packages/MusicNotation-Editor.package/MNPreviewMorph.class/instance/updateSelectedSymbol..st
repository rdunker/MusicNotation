symbol selection
updateSelectedSymbol: aMNMusicObject
	self symbolSelected
		ifTrue: [self selectedSymbol changeToUnselectedColor].
	self selectedSymbol = aMNMusicObject
		ifTrue: [self selectedSymbol: nil]
		ifFalse: [aMNMusicObject changeToSelectedColor.
				self selectedSymbol: aMNMusicObject].
	self updateEditor.