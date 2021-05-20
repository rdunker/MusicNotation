accessing
stringNamed: aSymbol attributeAt: aKey put: aValue
	^ (XMLElement named: aSymbol)
		attributeAt: aKey put: aValue;
		yourself