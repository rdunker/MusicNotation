evaluating
evaluate: textOrStream in: anEnvironment
	| method oldSymbols returnValue |

	method := anEnvironment compileMethod: textOrStream.
	oldSymbols:= anEnvironment allSymbols.

	returnValue := anEnvironment context executeMethod: method.
	self content addToStatementMapping: (anEnvironment context symbolsNotIn: oldSymbols).