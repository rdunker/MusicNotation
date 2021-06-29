siblings
nextSymbol
	^ self rightSibling
		ifNotNilDo: [ :symbol | ^ symbol]
		ifNil: [ self owner rightSibling
			ifNotNilDo: [ :measure | ^ measure submorphs first ]]