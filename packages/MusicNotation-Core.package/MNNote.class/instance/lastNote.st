accessing
lastNote
	^ self leftSibling
		ifNotNilDo: [ :note | ^ note]
		ifNil: [ self parent leftSibling
			ifNotNilDo: [ :measure | ^ measure notes last ]]