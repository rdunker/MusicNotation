as yet unclassified
addToStatementMapping: aCollection
	self statementMapping: 
		(self statementMapping 
			addLast: aCollection; 
			yourself).