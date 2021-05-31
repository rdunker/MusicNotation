updating
updateEditor
	self selectedSymbol
		ifNotNil: [self model updateContentsSelectedSymbol: self selectedSymbol musicObject]
		ifNil: [self model updateContentsNotSelected].
	