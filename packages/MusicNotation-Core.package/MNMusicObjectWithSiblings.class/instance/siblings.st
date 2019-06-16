accessing
siblings
	^ self parent
		ifNil: [ { self } ]
		ifNotNilDo: [ :p | p children ]