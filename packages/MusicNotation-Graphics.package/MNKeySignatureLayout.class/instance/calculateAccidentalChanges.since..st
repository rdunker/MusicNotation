calculating
calculateAccidentalChanges: newAccidentals since: oldAccidentals
	
	^ (self calculateNaturalsFor: newAccidentals since: oldAccidentals)
		addAll: (self calculateChangedAccidentalsFor: newAccidentals since: oldAccidentals);
		yourself