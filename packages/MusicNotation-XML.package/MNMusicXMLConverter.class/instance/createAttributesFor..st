converting
createAttributesFor: aMeasure
	| xml |
	xml := XMLElement named: #attributes.
	xml addElement: (self stringNamed: #divisions content: self divisions / 4).
	
	#(key time clef) do: [ :each |
		(aMeasure valueChanged: each)
			ifTrue: [ xml addElement: (self createAttributeForMeasure: aMeasure AtSymbol: each) ]].
	
	^ xml