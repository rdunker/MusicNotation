evaluating
evaluate: textOrStream in: anEnvironment
	| method methodNode oldSymbols |
	methodNode := Compiler new
		compile: textOrStream
		in: anEnvironment context class
		environment: anEnvironment
		notifying: nil
		ifFail: nil.
	methodNode sourceText: textOrStream.
	
	method := methodNode generate: CompiledMethodTrailer empty using: MNCompiledMethod.
	method methodNode: methodNode.
	
	anEnvironment context project 
		ifNotNil: [oldSymbols := anEnvironment context project allSymbols]
		ifNil: [oldSymbols := Set new].
	anEnvironment context executeMethod: method.
	self content addToStatementMapping: (anEnvironment context symbolsNotIn: oldSymbols).