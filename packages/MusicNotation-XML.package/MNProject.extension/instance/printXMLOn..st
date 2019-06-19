*MusicNotation-XML
printXMLOn: aStream
	MNMusicXMLConverter new printDocument: self on: aStream.