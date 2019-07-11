evaluating
evaluate: aString in: anEnvironment
	Compiler new
		evaluate: aString
		in: nil
		to: anEnvironment context
		environment: anEnvironment
		notifying: nil
		ifFail: nil
		logged: false.