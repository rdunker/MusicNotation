instance creation
on: aStream
	
	| writer |
	writer := XMLWriter on: aStream.
	writer initialize.
	^ self new stream: aStream;
		writer: writer