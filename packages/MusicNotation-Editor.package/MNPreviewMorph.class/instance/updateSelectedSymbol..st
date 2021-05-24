accessing
updateSelectedSymbol: aMNMusicObject
	self selectedSymbol
		ifNotNil: [self selectedSymbol changeToUnselectedColor].
	self selectedSymbol = aMNMusicObject
		ifTrue: [self selectedSymbol changeToUnselectedColor.
				self selectedSymbol: nil]
		ifFalse: [aMNMusicObject changeToSelectedColor.
				self selectedSymbol: aMNMusicObject].
	self updateEditor.