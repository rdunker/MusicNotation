instance creation
fromMusicXMLString: aString
	^ self fromMusicXMLDocument: (XMLDOMParser parseDocumentFrom: (ReadStream on: aString))