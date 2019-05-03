xml creation
createXML

	| xml attributes index |
	xml := XMLElement named: 'measure'.
	
	attributes := XMLElement named: 'attributes'.
	xml addElement: attributes.
	
	attributes addElement: ((XMLElement named: 'divisions')
		addContent: (XMLStringNode string: self divisions asString)).
		
	attributes addElement: ((XMLElement named: 'key')
		addElement: ((XMLElement named: 'fifths')
			addContent: (XMLStringNode string: self key asString))).
		
	attributes addElement: ((XMLElement named: 'time')
		addElement: ((XMLElement named: 'beats')
			addContent: (XMLStringNode string: self time numerator asString));
		addElement: ((XMLElement named: 'beat-type')
			addContent: (XMLStringNode string: self time denominator asString))).
	
	index := 1.
	self clefs do:
		[ :clef |
			attributes addElement: (clef createXML
				attributeAt: #number put: index asString).
			index := index + 1 ].
	
	self notes do: [ :note | xml addElement: (note createXMLWithDivisions: self divisions) ].
	
	^ xml.