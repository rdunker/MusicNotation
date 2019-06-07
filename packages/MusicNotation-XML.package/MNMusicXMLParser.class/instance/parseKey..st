parsing
parseKey: xmlKey
	| key |
	key := MNKey new.
	self stringNamed: #fifths in: xmlKey
		ifPresent: [ :fifths | key fifths: fifths asInteger].
	^ key.