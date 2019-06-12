accessing
stringNamed: aSymbol in: xmlElement
	^ self stringNamed: aSymbol in: xmlElement
		ifAbsent: [ MNError signal: 'expected <', aSymbol ,'> in <', xmlElement tag, '>' ].