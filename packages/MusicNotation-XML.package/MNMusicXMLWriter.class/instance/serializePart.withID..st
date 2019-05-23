serializing
serializePart: aPart withID: id

	| xml index |
	xml := (XMLElement named: 'part')
		attributeAt: 'id' put: id asString.
	
	index := 1.
	aPart measures do:
		[ :measure |
			xml addElement: ((self serializeMeasure: measure)
				attributeAt: 'number' put: index asString).
			index := index + 1 ].
	
	^ xml