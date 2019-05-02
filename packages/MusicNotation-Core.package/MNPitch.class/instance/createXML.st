accessing
createXML

	| xml |
	xml := XMLElement named: 'pitch'.
	
	xml addElement: ((XMLElement named: 'step')
		addContent: (XMLStringNode string: self step asUppercase)).
		
	xml addElement: ((XMLElement named: 'octave')
		addContent: (XMLStringNode string: self octave asString)).
	
	^ xml.