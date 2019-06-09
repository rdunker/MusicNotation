parsing
parseKey: xmlKey
	| key |
	self flag: #todo. "add support for MNManualKey"
	self stringNamed: #fifths in: xmlKey
		ifPresent: [ :fifths | 
			key := MNFifthsKey new fifths: fifths asInteger].
	(xmlKey firstTagNamed: #'key-step') ifNotNil: [ key := self parseManualKey: xmlKey ].
	^ key.