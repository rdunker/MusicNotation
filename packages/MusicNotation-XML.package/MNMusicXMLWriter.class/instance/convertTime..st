converting
convertTime: aTime
	^ (XMLElement named: #time)
		addElement: (self stringNamed: #beats content: aTime beats asString);
		addElement: (self stringNamed: #'beat-type' content: aTime beatType asString)