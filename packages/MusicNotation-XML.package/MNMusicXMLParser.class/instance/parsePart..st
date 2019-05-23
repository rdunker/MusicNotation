parsing
parsePart: xmlPart
	| part |
	part := MNPart new.
	xmlPart tagsNamed: #measure do: [ :xmlMeasure |
		part addMeasure: (self parseMeasure: xmlMeasure) ].
	^ part