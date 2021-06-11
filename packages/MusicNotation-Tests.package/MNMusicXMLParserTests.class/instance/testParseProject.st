tests
testParseProject
	| project xmlProject |
	xmlProject := self parseXML: '<score-partwise><part></part><part></part></score-partwise>'.
	project := self xmlParser parseScorePartwise: xmlProject.
	
	self assert: 2 equals: project parts size.