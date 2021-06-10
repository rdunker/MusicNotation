evaluating
allSymbols
	self context project 
		ifNotNil: [^ self context project allSymbols]
		ifNil: [^ Set new].