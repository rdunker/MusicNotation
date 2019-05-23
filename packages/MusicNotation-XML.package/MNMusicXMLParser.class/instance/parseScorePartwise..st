parsing
parseScorePartwise: xmlScorePartwise
	| project |
	project := MNProject new.
	xmlScorePartwise tagsNamed: #part do: [ :xmlPart |
		project addPart: (self parsePart: xmlPart) ].
	^ project