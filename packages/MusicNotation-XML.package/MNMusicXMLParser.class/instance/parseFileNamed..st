parsing
parseFileNamed: fileName
	^ self parseDocument: (XMLDOMParser parseDocumentFromFileNamed: fileName)