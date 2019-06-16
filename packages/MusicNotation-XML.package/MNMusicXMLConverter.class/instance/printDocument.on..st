converting
printDocument: aProject on: aStream
	| writer |
	writer := XMLWriter on: aStream.
	
	self writeDeclarationOn: writer.
	
	(aProject accept: self) printXMLOn: writer.