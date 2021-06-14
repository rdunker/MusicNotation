visiting
tieNotations: aNote
	| notations |
	
	notations := XMLElement named: #notations.
	aNote tieStop ifTrue:
		[ notations addElement: (self stringNamed: #tied attributeAt: #type put: 'stop') ].
	aNote tieStart ifTrue:
		[ notations addElement: (self stringNamed: #tied attributeAt: #type put: 'start') ].
	^ notations