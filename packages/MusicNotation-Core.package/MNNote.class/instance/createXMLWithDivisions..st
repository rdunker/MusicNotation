xml creation
createXMLWithDivisions: aNumber

	| xml |
	xml := XMLElement named: 'note'.
	
	self pitches do: [ :pitch | xml addElement: pitch createXML ].
	
	self pitches isEmpty ifTrue: [ xml addElement: (XMLElement named: 'rest') ].
	
	xml addElement: ((XMLElement named: 'duration')
		addContent: (XMLStringNode string: (self durationWithDivisions: aNumber) asString)).
		
	xml addElement: ((XMLElement named: 'type')
		addContent: (XMLStringNode string: self type)).
		
	self isDotted ifTrue: [ xml addElement: (XMLElement named: 'dot') ].
	
	^ xml.