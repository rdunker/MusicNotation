xml creation
createXMLScore

	^ (XMLElement named: 'score-part')
		attributeAt: #id put: self id asString;
		addElement: ((XMLElement named: 'part-name')
			addContent: (XMLStringNode string: self name))