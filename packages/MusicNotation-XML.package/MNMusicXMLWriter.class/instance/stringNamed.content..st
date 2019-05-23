serializing
stringNamed: aSymbol content: aString

	^ (XMLElement named: aSymbol)
		addContent: (XMLStringNode string: aString);
		yourself