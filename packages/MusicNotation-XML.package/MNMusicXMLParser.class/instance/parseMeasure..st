parsing
parseMeasure: xmlMeasure
	| measure |
	measure := MNMeasure new.
	xmlMeasure elements do: [ :xmlElement |
		xmlElement tag == #attributes
			ifTrue: [ self parseAttributes: xmlElement in: measure ].
		xmlElement tag == #note
			ifTrue: [ self addNote: (self parseNote: xmlElement) toMeasure: measure ] ].
	^ measure