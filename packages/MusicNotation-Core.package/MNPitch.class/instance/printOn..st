printing
printOn: aStream
	aStream nextPut: self step asUppercase.
	self isNormal
		ifFalse: [ aStream nextPutAll: (#('bb' 'b' '' '#' '##') at: self alter + 3) ].
	aStream nextPutAll: self octave asString.