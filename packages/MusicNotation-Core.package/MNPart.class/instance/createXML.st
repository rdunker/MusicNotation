xml creation
createXML

	| xml index |
	xml := XMLElement
		named: 'part'
		attributes: (Dictionary new
			at: 'id' put: self id;
			yourself).
	
	index := 1.
	self measures do:
		[ :measure |
			xml addElement: (measure createXML
				attributeAt: #number put: index asString).
			index := index + 1 ].
	
	^ xml