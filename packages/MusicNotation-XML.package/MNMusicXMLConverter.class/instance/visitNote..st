visiting
visitNote: aNote
	| xml notations |
	xml := XMLElement named: #note.
	
	aNote chordPart
		ifTrue: [ xml addElement: (XMLElement named: #chord) ].
	
	aNote pitches
		ifEmpty: [ xml addElement: (XMLElement named: #rest) ]
		ifNotEmptyDo: [ :pitches | self addAll: pitches to: xml ].
	
	xml addElement: (self stringNamed: #duration content: (self durationOf: aNote)).
	aNote tieStop ifTrue:
		[ xml addElement: (self stringNamed: #tie attributeAt: #type put: 'stop') ].
	aNote tieStart ifTrue:
		[ xml addElement: (self stringNamed: #tie attributeAt: #type put: 'start') ].
	xml addElement: (self stringNamed: #type content: (self noteTypeOf: aNote)).
	
	aNote numDots timesRepeat: [ xml addElement: (XMLElement named: #dot) ].
	
	notations := XMLElement named: #notations.
	aNote tieStop ifTrue:
		[ notations addElement: (self stringNamed: #tied attributeAt: #type put: 'stop') ].
	aNote tieStart ifTrue:
		[ notations addElement: (self stringNamed: #tied attributeAt: #type put: 'start') ].
	
	notations elements isEmpty ifFalse: [ xml addElement: notations ].
	
	^ xml