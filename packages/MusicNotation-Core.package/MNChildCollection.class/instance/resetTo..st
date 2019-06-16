removing
resetTo: index
	firstIndex ifNotNil: [ self privateUnsetParentsOf: self ].
	^ super resetTo: index