evaluating
evaluate: textOrStream in: anEnvironment
	| method methodNode |
	methodNode := Compiler new
		compile: textOrStream
		in: UndefinedObject
		environment: anEnvironment
		notifying: nil
		ifFail: nil.
	methodNode sourceText: textOrStream.
	
	method := methodNode generate: CompiledMethodTrailer empty using: MNCompiledMethod.
	method methodNode: methodNode.
	
	nil executeMethod: method.