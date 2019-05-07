accessing
stringNamed: aSymbol in: xmlElement ifPresent: aBlock
	^ (xmlElement firstTagNamed: aSymbol)
		ifNotNil: [ :e | aBlock value: e contentString ]