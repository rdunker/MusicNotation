accessing
stringNamed: aSymbol content: aString
	^ (XMLElement named: aSymbol)
		addElement: (XMLStringNode string: aString asString);
		yourself