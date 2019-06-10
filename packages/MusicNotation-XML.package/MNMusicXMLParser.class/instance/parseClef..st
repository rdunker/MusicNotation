parsing
parseClef: xmlClef
	| clef |
	clef := MNClef new.
	self stringNamed: #sign in: xmlClef
		ifPresent: [ :sign | 
			clef sign: sign asLowercase].
	self stringNamed: #line in: xmlClef
		ifPresent: [ :line | 
			clef line: line asInteger].
	^ clef