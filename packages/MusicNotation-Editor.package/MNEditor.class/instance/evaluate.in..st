evaluating
evaluate: textOrStream in: anEnvironment
	| method oldSymbols |
	
	method := anEnvironment compileMethod: textOrStream.
	oldSymbols:= anEnvironment allSymbols.
	
	anEnvironment context executeMethod: method.
	self content addToStatementMapping: (anEnvironment context symbolsNotIn: oldSymbols).