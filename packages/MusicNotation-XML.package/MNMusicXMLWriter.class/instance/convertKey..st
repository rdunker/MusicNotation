converting
convertKey: aKey
	| xml |
	xml := XMLElement named: #key.
	
	aKey isFifthsKey ifTrue: [
		xml addElement: (self stringNamed: #fifths content: aKey fifths asString) ]
	ifFalse: [
		aKey symbols do: [ :symbol |
			xml addElement: (self stringNamed: #'key-step' content: symbol step asUppercase asString).
			xml addElement: (self stringNamed: #'key-alter' content: symbol alter asString) ] ].
	^ xml