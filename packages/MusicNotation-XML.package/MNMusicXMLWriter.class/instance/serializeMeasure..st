serializing
serializeMeasure: aMeasure

	| xml attributes |
	
	self flag: #todo.
	
	xml := XMLElement named: 'measure'.
	
	attributes := XMLElement named: 'attributes'.
	xml addElement: attributes.
	
	attributes addElement: (self stringNamed: 'divisions' content: (self calculateDivisions: aMeasure) asString).
		
	attributes addElement: ((XMLElement named: 'key')
		addElement: (self stringNamed: 'fifths' content: 0 asString)).
		
	attributes addElement: ((XMLElement named: 'time')
		addElement: (self stringNamed: 'beats' content: 4 asString);
		addElement: (self stringNamed: 'beat-type' content: 4 asString)).
	
	attributes addElement: ((XMLElement named: 'clef')
		attributeAt: 'number' put: 1 asString;
		addElement: (self stringNamed: 'sign' content: $g asUppercase asString);
		addElement: (self stringNamed: 'line' content: 2 asString)).
	
	aMeasure notes do: [ :note | xml addElement: (self serializeNote: note withDivisions: (self calculateDivisions: aMeasure)) ].
	
	^ xml.