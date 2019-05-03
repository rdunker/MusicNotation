xml creation
createXMLWithDivisions: aNumber

	| xml |
	xml := XMLElement named: 'note'.
	
	self pitches do: [ :pitch | xml addElement: pitch createXML ].
	
	xml addElement: ((XMLElement named: 'duration')
		addContent: (XMLStringNode string: (self durationWithDivisions: aNumber) asString)).
		
	xml addElement: ((XMLElement named: 'type')
		addContent: (XMLStringNode string: self type)).
	
	^ xml.