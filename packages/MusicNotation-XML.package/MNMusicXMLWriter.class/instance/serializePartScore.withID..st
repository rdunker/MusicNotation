serializing
serializePartScore: aPart withID: id

	^ (XMLElement named: 'score-part')
		attributeAt: 'id' put: id asString;
		addElement: (self stringNamed: 'part-name' content: ('Part ' , id asString))