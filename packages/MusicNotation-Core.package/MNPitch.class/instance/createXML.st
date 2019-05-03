xml creation
createXML

	| xml |
	xml := XMLElement named: 'pitch'.
	
	xml addElement: ((XMLElement named: 'step')
		addContent: (XMLStringNode string: self step asString asUppercase)).
		
	self isNormal ifFalse:
		[
			xml addElement: ((XMLElement named: 'alter')
				addContent: (XMLStringNode string: self alter asString)). ].
		
	xml addElement: ((XMLElement named: 'octave')
		addContent: (XMLStringNode string: self octave asString)).
	
	^ xml.