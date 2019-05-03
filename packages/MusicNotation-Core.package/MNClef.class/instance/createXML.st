xml
createXML
	
	^ (XMLElement named: 'clef')
		addElement: ((XMLElement named: 'sign')
			addContent: (XMLStringNode string: self sign asString asUppercase));
		addElement: ((XMLElement named: 'line')
			addContent: (XMLStringNode string: self line asString))