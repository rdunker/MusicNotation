parsing
parseKey: xmlKey
	| key |
	self flag: #todo. "add support for MNManualKey"
	key := MNFifthsKey new.
	self stringNamed: #fifths in: xmlKey
		ifPresent: [ :fifths | key fifths: fifths asInteger].
	^ key.