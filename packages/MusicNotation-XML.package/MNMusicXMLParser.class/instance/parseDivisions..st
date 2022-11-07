parsing
parseDivisions: xmlAttributes
	self stringNamed: #divisions in: xmlAttributes
		ifPresent: [ :newDivisions | self divisions: newDivisions asInteger * 4 ].