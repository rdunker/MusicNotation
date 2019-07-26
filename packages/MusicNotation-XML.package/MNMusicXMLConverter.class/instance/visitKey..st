visiting
visitKey: aKey
	| xml |
	xml := XMLElement named: #key.
	
	aKey asFifths
		ifNotNilDo: [ :fifths | xml addElement: (self stringNamed: #fifths content: fifths) ]
		ifNil: [ self addAccidentalKey: aKey to: xml ].
	
	^ xml