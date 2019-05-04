parsing
parseAttributes: xmlAttributes in: aMeasure
	self parseAttributes: xmlAttributes.
	self flag: #todo. "Parse beat, etc. once it is available in the core"