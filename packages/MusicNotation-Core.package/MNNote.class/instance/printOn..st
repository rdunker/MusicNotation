printing
printOn: aStream
	aStream nextPutAll: self duration asString.
	self pitches ifEmpty: [ aStream nextPutAll: ' -' ].
	self pitches do: [ :each |
		aStream space.
		each printOn: aStream ].