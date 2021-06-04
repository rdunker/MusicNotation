accessing
nextNote
	^ self rightSibling
		ifNotNilDo: [ :note | ^ note]
		ifNil: [ self parent rightSibling
			ifNotNilDo: [ :measure | ^ measure notes first ]]