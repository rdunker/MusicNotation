tests
testParseEmptyProject

	| project xmlProject |
	xmlProject := self parseXML: '<score-partwise></score-partwise>'.
	project :=  self xmlParser parseScorePartwise: xmlProject.
	
	self assert: 0 equals: (project parts) size.