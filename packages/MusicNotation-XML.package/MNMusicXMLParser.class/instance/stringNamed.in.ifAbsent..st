accessing
stringNamed: aSymbol in: xmlElement ifAbsent: aBlock
	^ (xmlElement firstTagNamed: aSymbol)
		ifNil: aBlock
		ifNotNil: #contentString