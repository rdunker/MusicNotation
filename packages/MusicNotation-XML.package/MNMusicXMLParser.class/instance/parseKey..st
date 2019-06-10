parsing
parseKey: xmlKey
	self stringNamed: #fifths in: xmlKey
		ifPresent: [ :fifths | 
			^ MNFifthsKey new fifths: fifths asInteger].
	(xmlKey firstTagNamed: #'key-step') ifNotNil: [ ^ self parseManualKey: xmlKey ].
	
	self halt: 'Invalid key element in XML.'