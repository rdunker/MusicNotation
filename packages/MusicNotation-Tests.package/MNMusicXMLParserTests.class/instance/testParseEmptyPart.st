tests
testParseEmptyPart

	| xmlPart part |
	xmlPart := self parseXML: '<part></part>'.
	part := self xmlParser parsePart: xmlPart.
	
	self assert: 0 equals: part measures size.