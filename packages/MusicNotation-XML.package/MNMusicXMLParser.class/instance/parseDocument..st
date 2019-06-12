parsing
parseDocument: xmlDocument
	| root |
	root := xmlDocument root.
	root tag == #'score-partwise'
		ifTrue: [ ^ self parseScorePartwise: root ].
	MNInvalidValue for: xmlDocument at: #root
		value: '<', root tag, '>' description: 'only <score-partwise> is supported'.