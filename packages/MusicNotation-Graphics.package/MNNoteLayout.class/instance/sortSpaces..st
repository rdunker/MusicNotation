calculating
sortSpaces: aCollection
	aCollection sort: [ :a :b |
		(a isInteger = b isInteger)
			ifTrue: [ a <= b]
			ifFalse: [ a isInteger ]].