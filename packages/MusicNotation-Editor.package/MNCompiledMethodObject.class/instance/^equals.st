comparing
= anObject
	^ (anObject isKindOf: self class)
		and: [ self compiledMethod == anObject compiledMethod ]