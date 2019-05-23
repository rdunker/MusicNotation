accessing
stringNamed: aSymbol in: xmlElement
	^ self stringNamed: aSymbol in: xmlElement
		ifAbsent: [ self halt: 'Missing <', aSymbol, '> element.' ]