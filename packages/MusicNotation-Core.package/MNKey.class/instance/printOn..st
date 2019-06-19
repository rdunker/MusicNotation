printing
printOn: aStream
	super printOn: aStream.
	aStream nextPut: $(.
	self accidentals
		do: [ :each |
			aStream nextPut: each key asUppercase.
			aStream nextPut: (#'b_#' at: each value + 2) ]
		separatedBy: [ aStream space ].
	aStream nextPut: $).