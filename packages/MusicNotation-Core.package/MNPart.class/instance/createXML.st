xml creation
createXML

	| xml index |
	xml := (XMLElement named: 'part')
		attributeAt: #id put: self id asString.
	
	index := 1.
	self measures do:
		[ :measure |
			xml addElement: (measure createXML
				attributeAt: #number put: index asString).
			index := index + 1 ].
	
	^ xml