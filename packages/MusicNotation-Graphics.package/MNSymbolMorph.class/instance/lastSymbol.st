calculating
lastSymbol
	^ self leftSibling
		ifNotNilDo: [ :symbol | ^ symbol]
		ifNil: [ self owner leftSibling
			ifNotNilDo: [ :measure | ^ measure submorphs last ]]