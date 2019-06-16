converting
createAttributesFor: aMeasure
	| xml leftSibling block |
	xml := XMLElement named: #attributes.
	xml addElement: (self stringNamed: #divisions content: self divisions / 4).
	
	leftSibling := aMeasure leftSibling.
	block := [ :getter :aBlock |
		(getter value: aMeasure) = (leftSibling ifNotNilDo: getter)
			ifFalse: [ xml addElement: aBlock value ]].
	
	block value: #key value: [ self convertKey: aMeasure key ].
	block value: #time value: [  self convertTime: aMeasure time ].
	block value: #clef value: [ self convertClef: aMeasure clef ].
	
	^ xml