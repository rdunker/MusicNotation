tests
testManualKey
	| key |
	key := MNManualKey new symbols: {
		MNKeySymbol newSharpSymbol step: $c .
		MNKeySymbol newFlatSymbol step: $d .
		MNKeySymbol newNaturalSymbol step: $e }.
		
	self assert: 3 equals: key symbols size.
	
	self assert: $c equals: (key symbols at: 1) step.
	self assert: (key symbols at: 1) isSharp.
	
	self assert: $d equals: (key symbols at: 2) step.
	self assert: (key symbols at: 2) isFlat.
	
	self assert: $e equals: (key symbols at: 3) step.
	self assert: (key symbols at: 3) isNormal.