splitting
splitAfterQuotes
	(self waitingFor isEmpty not and: [self waitingFor top = $"]) 
 		ifTrue:[self waitingFor pop. self list addLast: self statement. self statement: '']
		ifFalse:[self waitingFor push: $".]