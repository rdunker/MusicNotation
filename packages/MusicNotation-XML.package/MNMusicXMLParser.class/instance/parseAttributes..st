parsing
parseAttributes: xmlAttributes
	self stringNamed: #divisions in: xmlAttributes
		ifPresent: [ :divisions | self divisions: divisions asInteger * 4 ].