accessing
siblings
	^ self owner
		ifNil: [ { self } ]
		ifNotNilDo: [ :p | p submorphs ]