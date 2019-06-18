calculating
calculateAccidentalChanges: newAccidentals since: oldAccidentals
	| changes dict |
	changes := OrderedCollection new.
	
	dict := newAccidentals collect: #key as: Set.
	oldAccidentals do: [ :each |
		(dict includes: each key)
			ifFalse: [ changes add: (self lineOf: each) -> 0 ]].
		
	dict := oldAccidentals as: Dictionary.
	newAccidentals do: [ :each |
		(dict includesAssociation: each)
			ifFalse: [ changes add: (self lineAndAlterOf: each) ]].
	
	^ changes