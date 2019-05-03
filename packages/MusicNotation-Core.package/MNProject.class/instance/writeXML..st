xml writing
writeXML: aFile
	
	| stream writer |
	FileDirectory deleteFilePath: aFile.
	stream := FileStream fileNamed: aFile.
	writer := XMLWriter on: stream.
	writer initialize.	
	self createXML printXMLOn: writer.
	stream close