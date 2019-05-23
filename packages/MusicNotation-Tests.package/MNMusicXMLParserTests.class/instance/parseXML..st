accessing
parseXML: aString
	^ (XMLDOMParser parseDocumentFrom: aString readStream) root