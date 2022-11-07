removing
resetTo: index
	self firstIndex ifNotNil: [ self privateUnsetParentsOf: self ].
	^ super resetTo: index