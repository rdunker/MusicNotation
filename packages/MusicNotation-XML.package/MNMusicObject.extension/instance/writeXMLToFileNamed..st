*MusicNotation-XML
writeXMLToFileNamed: fileName
	self printXMLOn: (FileStream newFileNamed: fileName).