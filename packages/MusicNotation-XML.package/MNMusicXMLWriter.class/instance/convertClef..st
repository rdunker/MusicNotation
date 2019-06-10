converting
convertClef: aClef
	^ (XMLElement named: #clef)
		addElement: (self stringNamed: #sign content: aClef sign asUppercase asString);
		addElement: (self stringNamed: #line content: aClef line asString)