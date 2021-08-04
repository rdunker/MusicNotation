statement mapping 
statementsOf: aMNNote
	^ (1 to: self statementMapping size) 
		select: [ :each | (self statementMapping at: each) includes: aMNNote].