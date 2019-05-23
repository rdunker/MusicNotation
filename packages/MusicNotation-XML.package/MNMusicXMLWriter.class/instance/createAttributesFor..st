converting
createAttributesFor: aMeasure
	| xml |
	xml := XMLElement named: #attributes.
	
	xml addElement: (self stringNamed: #divisions content: self divisions / 4).
	
	self flag: #todo. "use aMeasure key once this is supported"
	xml addElement: ((XMLElement named: #key)
		addElement: (self stringNamed: #fifths content: 0);
		yourself).
	
	self flag: #todo. "use aMeasure beat once this is supported"
	xml addElement: ((XMLElement named: #time)
		addElement: (self stringNamed: #beats content: 4);
		addElement: (self stringNamed: #'beat-type' content: 4)).
	
	self flag: #todo. "use aMeasure clef once this is supported"
	xml addElement: ((XMLElement named: #clef)
		attributeAt: #number put: 1 asString;
		addElement: (self stringNamed: #sign content: $g asUppercase);
		addElement: (self stringNamed: #line content: 2);
		yourself).
	
	^ xml.