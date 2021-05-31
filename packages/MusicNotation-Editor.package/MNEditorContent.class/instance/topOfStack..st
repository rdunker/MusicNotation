content list
topOfStack: aStack
	aStack isEmpty 
		ifTrue:[^nil]
		ifFalse:[^ aStack top]