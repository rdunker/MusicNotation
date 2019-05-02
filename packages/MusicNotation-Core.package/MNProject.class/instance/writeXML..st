adding
writeXML: aFile

	| stream writer |
	stream := FileStream fileNamed: aFile.
	writer := XMLWriter on: stream.
	writer initialize.	
	
	self createXML printXMLOn: writer.
	stream close