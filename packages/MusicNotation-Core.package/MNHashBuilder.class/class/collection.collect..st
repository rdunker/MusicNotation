comparing
collection: aCollection collect: aBlock
	| hash |
	hash := 0.
	aCollection do: [ :each |
		hash := hash hashMultiply bitXor: (aBlock value: each) hash ].
	^ hash hashMultiply bitXor: aCollection size hash