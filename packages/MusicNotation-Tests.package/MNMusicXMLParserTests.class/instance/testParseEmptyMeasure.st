as yet unclassified
testParseEmptyMeasure

	| measure xmlMeasure |
	xmlMeasure := self parseXML: '<measure></measure>'.
	measure := self xmlParser parseMeasure: xmlMeasure.
	
	self assert: 0 equals: measure notes size.