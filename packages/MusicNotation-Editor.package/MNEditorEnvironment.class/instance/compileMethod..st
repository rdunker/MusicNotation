evaluating
compileMethod: textOrStream 
	| method methodNode |
	methodNode := self compile: textOrStream.
	methodNode sourceText: textOrStream.
	method := methodNode generate: CompiledMethodTrailer empty using: MNCompiledMethod.
	method methodNode: methodNode.
	^method 