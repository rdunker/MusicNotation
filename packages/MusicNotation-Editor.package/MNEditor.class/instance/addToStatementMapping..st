as yet unclassified
addToStatementMapping: aMNMusicObject
	self statementMapping: 
		(self statementMapping 
			addLast: aMNMusicObject; 
			yourself).