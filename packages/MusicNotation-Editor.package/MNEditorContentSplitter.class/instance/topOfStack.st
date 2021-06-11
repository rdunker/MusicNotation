splitting
topOfStack
	self waitingFor isEmpty 
		ifTrue:[^nil]
		ifFalse:[^ self waitingFor top]