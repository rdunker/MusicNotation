splitting
pushBracketsToStack: aCharacter
		aCharacter = $[
			ifTrue: [self waitingFor push: $]].
		aCharacter = ${
			ifTrue: [self waitingFor push: $}].