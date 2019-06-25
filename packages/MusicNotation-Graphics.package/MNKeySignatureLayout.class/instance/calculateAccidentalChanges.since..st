calculating
calculateAccidentalChanges: newAccidentals since: oldAccidentals
	| changes collection |
	changes := OrderedCollection new: 7.
	
	collection := newAccidentals collect: #key as: Set.
	oldAccidentals do: [ :each |
		(collection includes: each key)
			ifFalse: [ changes add: (self lineOf: each) -> 0 ]].
		
	collection := oldAccidentals as: Dictionary.
	newAccidentals do: [ :each |
		(collection includesAssociation: each)
			ifFalse: [ changes add: (self lineAndAlterOf: each) ]].
	
	^ changes