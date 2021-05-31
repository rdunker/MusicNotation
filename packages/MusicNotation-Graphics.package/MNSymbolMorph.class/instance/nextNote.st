nil
nextNote
	^ self rightSibling
		ifNotNilDo: [ :note | ^ note]
		ifNil: [ self owner rightSibling
			ifNotNilDo: [ :measure | ^ measure submorphs first ]]