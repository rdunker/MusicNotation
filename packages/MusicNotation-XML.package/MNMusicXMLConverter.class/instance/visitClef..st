visiting
visitClef: aClef
	| xml |
	xml := XMLElement named: #clef.
	
	xml addElement: (self stringNamed: #sign content: aClef sign asUppercase);
		addElement: (self stringNamed: #line content: aClef line).
	
	^ xml