accessing
createXML

	| xml index |
	xml := XMLElement
		named: 'part'
		attributes: (Dictionary new
			at: 'id' put: self id;
			yourself).
	
	index := 1.
	self measures do:
		[ :measure |
			xml addElement: ((measure createXML)
				setAttributes: (Dictionary new
				at: #number put: index asString;
				yourself)).
			index := index + 1 ].
	
	^ xml