evaluating
compile: textOrStream 
	^(Compiler new)
		compile: textOrStream
		in: self context class
		environment: self
		notifying: nil
		ifFail: nil.