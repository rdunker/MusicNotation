visiting
visitNote: aNote
	| xml notations |
	xml := XMLElement named: #note.
	
	aNote chordPart
		ifTrue: [ xml addElement: (XMLElement named: #chord) ].
	
	aNote pitches
		ifEmpty: [ xml addElement: (XMLElement named: #rest) ]
		ifNotEmptyDo: [ :pitches | self addAll: pitches to: xml ].
	
	xml := self addTiesToXml: xml note: aNote.
	aNote numDots timesRepeat: [ xml addElement: (XMLElement named: #dot) ].
	
	notations := self tieNotations: aNote.
	notations elements isEmpty ifFalse: [ xml addElement: notations ].
	
	^ xml