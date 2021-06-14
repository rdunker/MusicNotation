visiting
addTiesToXml: aXMLElement note: aNote
	aXMLElement addElement: (self stringNamed: #duration content: (self durationOf: aNote)).
	aNote tieStop ifTrue:
		[ aXMLElement addElement: (self stringNamed: #tie attributeAt: #type put: 'stop') ].
	aNote tieStart ifTrue:
		[ aXMLElement addElement: (self stringNamed: #tie attributeAt: #type put: 'start') ].
	aXMLElement addElement: (self stringNamed: #type content: (self noteTypeOf: aNote)).
	
	^ aXMLElement 