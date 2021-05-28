content list
pushBracketsToStack: aStack symbol: aCharacter
		aCharacter = $[
			ifTrue: [aStack push: $]].
		aCharacter = ${
			ifTrue: [aStack push: $}].
	^ aStack