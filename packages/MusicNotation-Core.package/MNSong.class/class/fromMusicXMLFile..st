instance creation
fromMusicXMLFile: aFileName
	^ self fromMusicXMLDocument: (XMLDOMParser parseDocumentFromFileNamed: aFileName)