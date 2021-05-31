statement mapping 
addToStatementMapping: aCollection
	self statementMapping: 
		(self statementMapping 
			addLast: aCollection; 
			yourself).