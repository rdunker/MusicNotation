*MusicNotation-XML
asXMLString
	^ String streamContents: [ :stream |
		self printXMLOn: stream ]