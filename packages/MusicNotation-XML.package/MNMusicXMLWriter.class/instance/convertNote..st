converting
convertNote: aNote
	| xml |
	xml := XMLElement named: #note.
	
	aNote pitches
		ifEmpty: [ xml addElement: (XMLElement named: #rest) ]
		ifNotEmptyDo: [ :pitches | pitches do: [ :pitch |
			xml addElement: (self convertPitch: pitch) ]].
	
	xml addElement: (self stringNamed: #duration content: (self durationOf: aNote)).
	xml addElement: (self stringNamed: #type content: (self noteTypeOf: aNote)).
	
	aNote numDots timesRepeat: [ xml addElement: (XMLElement named: #dot) ].
	
	^ xml.