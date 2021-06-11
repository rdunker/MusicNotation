tests
testParseMeasure
	| measure xmlMeasure |
	xmlMeasure := self parseXML: '<measure><note><duration>1</duration></note><note><duration>1</duration></note></measure>'.
	measure := self xmlParser parseMeasure: xmlMeasure.
	
	self assert: 2 equals: measure notes size.