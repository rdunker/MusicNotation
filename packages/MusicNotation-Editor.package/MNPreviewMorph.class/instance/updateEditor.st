updating
updateEditor
	self selectedSymbol
		ifNotNil: [self model updateSelectedSymbol: self selectedSymbol note]
		ifNil: [self model updateContents].
	