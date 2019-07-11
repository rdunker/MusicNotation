evaluating
evaluate: aString in: anEnvironment
	| methodNode method |
	methodNode := Compiler new
		compile: aString
		in: anEnvironment context class
		environment: anEnvironment
		notifying: nil
		ifFail: nil.
	
	method := methodNode generate.
	
	anEnvironment context executeMethod: method.