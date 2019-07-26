calculating
calculateChangedAccidentalsFor: newAccidentals since: oldAccidentals
	| collection |
	collection := oldAccidentals as: Dictionary.
	
	^ newAccidentals
		select: [ :each | (collection includesAssociation: each) not ]
		thenCollect: [ :each | self lineAndAlterOf: each ]