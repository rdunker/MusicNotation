parsing
parseDocument: xmlDocument
	| root |
	root := xmlDocument root.
	root tag == #'score-partwise'
		ifTrue: [ ^ self parseScorePartwise: root ].
	self halt: 'Unsupported MusicXML root element ', root tag, '.'.