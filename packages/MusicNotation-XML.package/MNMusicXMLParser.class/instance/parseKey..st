parsing
parseKey: xmlKey
	self stringNamed: #fifths in: xmlKey
		ifPresent: [ :fifths | ^ MNFifthsKey fifths: fifths ].
	
	^ self parseManualKey: xmlKey