accessing
clefChanged
	^ self key parent
		ifNil: [ true ]
		ifNotNilDo: [ :measure | measure valueChanged: #clef ]