converting
createAttributesFor: aMeasure
	| xml leftSibling value |
	xml := XMLElement named: #attributes.
	xml addElement: (self stringNamed: #divisions content: self divisions / 4).
	
	leftSibling := aMeasure leftSibling.
	
	#(key time clef) do: [ :each |
		value := each value: aMeasure.
		value = (leftSibling ifNotNilDo: each)
			ifFalse: [ xml addElement: (each == #time
				ifTrue: [ self createTime: value ]
				ifFalse: [ value accept: self ]) ]].
	
	^ xml