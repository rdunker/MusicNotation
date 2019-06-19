printing
printOn: aStream
	aStream nextPut: self step asUppercase.
	self isNormal
		ifFalse: [ aStream nextPut: (#'b_#' at: self alter + 2) ].
	aStream nextPutAll: self octave asString.