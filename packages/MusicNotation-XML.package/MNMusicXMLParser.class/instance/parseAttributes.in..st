parsing
parseAttributes: xmlAttributes in: aMeasure
	self parseDivisions: xmlAttributes.
	xmlAttributes elements do: [ :xmlElement |
		self parseAttribute: xmlElement in: aMeasure ].