converting
createAttributesFor: aMeasure
	| xml |
	xml := XMLElement named: #attributes.
	
	xml addElement: (self stringNamed: #divisions content: self divisions / 4).
	
	aMeasure key ifNotNil: [ xml addElement: (self convertKey: aMeasure key) ].
	
	aMeasure time ifNotNil: [ xml addElement: (self convertTime: aMeasure time) ].
	
	aMeasure clef ifNotNil: [ xml addElement: (self convertClef: aMeasure clef) ].
	
	^ xml.