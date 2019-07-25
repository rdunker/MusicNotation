calculating
calculateNaturalsFor: newAccidentals since: oldAccidentals
	| collection |
	collection := newAccidentals collect: #key as: Set.
	
	^ oldAccidentals
		select: [ :each | (collection includes: each key) not ]
		thenCollect: [ :each | (self lineOf: each) -> 0 ]