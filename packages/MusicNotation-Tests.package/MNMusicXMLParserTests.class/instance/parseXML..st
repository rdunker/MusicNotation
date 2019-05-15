as yet unclassified
parseXML: aString
	^ (XMLDOMParser parseDocumentFrom: aString readStream) root