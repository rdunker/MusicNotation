*MusicNotation-XML
writeXMLToFileNamed: fileName
	"use forceNewFileNamed: if the file should be overwritten without any user interaction"
	self printXMLOn: (FileStream newFileNamed: fileName).