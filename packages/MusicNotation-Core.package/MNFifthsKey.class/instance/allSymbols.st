accessing
allSymbols
	^ self fifths positive 	
		ifTrue: [ self sharpSymbols ]
		ifFalse: [ self flatSymbols ]