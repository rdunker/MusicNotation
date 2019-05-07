parsing
parseFrom: aStream
	^ self parseDocument: (XMLDOMParser parseDocumentFrom: aStream readStream)