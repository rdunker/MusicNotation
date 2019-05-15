as yet unclassified
testParsePart

	| xmlPart part |
	xmlPart := self parseXML: '<part><measure></measure><measure></measure></part>'.
	part :=  self xmlParser parsePart: xmlPart.
	
	self assert: 2 equals: part measures size.