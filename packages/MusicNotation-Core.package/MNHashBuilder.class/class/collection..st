comparing
collection: aCollection
	| hash |
	hash := 0.
	aCollection do: [ :each |
		hash := hash hashMultiply bitXor: each hash ].
	^ hash hashMultiply bitXor: aCollection size hash