enumerating
replace: aBlock
	^ super replace: [ :each |
		self privateUpdateParentOf: each
			replacedBy: (aBlock value: each) ]