visiting
visitNote: aNote
	| xml |
	xml := XMLElement named: #note.
	
	aNote pitches
		ifEmpty: [ xml addElement: (XMLElement named: #rest) ]
		ifNotEmptyDo: [ :pitches | self addAll: pitches to: xml ].
	
	xml addElement: (self stringNamed: #duration content: (self durationOf: aNote)).
	xml addElement: (self stringNamed: #type content: (self noteTypeOf: aNote)).
	
	aNote numDots timesRepeat: [ xml addElement: (XMLElement named: #dot) ].
	
	^ xml.