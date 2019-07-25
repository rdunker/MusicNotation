visiting
addAccidentalKey: aKey to: anXMLElement
	(aKey accidentals asDictionary) keysAndValuesDo: [ :step :alter | 
		anXMLElement
			addElement: (self stringNamed: #'key-step' content: step asUppercase);
			addElement: (self stringNamed: #'key-alter' content: alter) ].