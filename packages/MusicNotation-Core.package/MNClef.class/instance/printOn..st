printing
printOn: aStream
	aStream
		nextPut: self sign asUppercase;
		nextPutAll: self line asString.