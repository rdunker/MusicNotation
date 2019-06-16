converting
convertClef: aClef
	| xml |
	xml := XMLElement named: #clef.
	
	xml addElement: (self stringNamed: #sign content: aClef sign asUppercase).
	xml addElement: (self stringNamed: #line content: aClef line).
	
	^ xml