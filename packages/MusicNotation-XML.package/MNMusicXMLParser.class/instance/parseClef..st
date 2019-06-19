parsing
parseClef: xmlClef
	^ MNClef
		sign: (self stringNamed: #sign in: xmlClef)
		line: (self stringNamed: #line in: xmlClef)