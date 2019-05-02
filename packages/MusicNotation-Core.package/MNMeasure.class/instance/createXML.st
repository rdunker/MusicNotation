initialize-release
createXML
	"WIP: key, clef"
	| xml attributes |
	xml := XMLElement named: 'measure'.
	
	attributes := XMLElement named: 'attributes'.
	xml addElement: attributes.
	
	attributes addElement: ((XMLElement named: 'divisions')
		addContent: (XMLStringNode string: self divisions asString)).
		
	attributes addElement: ((XMLElement named: 'time')
		addElement: ((XMLElement named: 'beats')
			addContent: (XMLStringNode string: self time numerator asString));
		addElement: ((XMLElement named: 'beat-type')
			addContent: (XMLStringNode string: self time denominator asString))).
	
	self notes do: [ :note | xml addElement: (note createXMLWithDivisions: self divisions) ].
	
	^ xml.