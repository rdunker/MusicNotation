evaluating
evaluate: textOrStream in: anEnvironment
	| method methodNode |
	methodNode := Compiler new
		compile: textOrStream
		in: anEnvironment context class
		environment: anEnvironment
		notifying: nil
		ifFail: nil.
	methodNode sourceText: textOrStream.
	
	method := methodNode generate: CompiledMethodTrailer empty using: MNCompiledMethod.
	method methodNode: methodNode.
	
	anEnvironment context executeMethod: method.