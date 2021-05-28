updating
updateEditor
	self selectedSymbol
		ifNotNil: [self model updateContentsSelectedSymbol: self selectedSymbol note]
		ifNil: [self model updateContentsNotSelected].
	