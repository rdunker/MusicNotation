calculating
calculateAccidentals
	| collection dict accidentalDict lineBlock |
	dict := self note parent
		ifNil: [ Dictionary new ]
		ifNotNilDo: [ :p | p key accidentals as: Dictionary ].
	
	accidentalDict := self calculateAccidentalDictionaryForNote: self note leftSibling.
	
	collection := OrderedCollection new.
	
	lineBlock := self lineConverterBlock.
	
	self note pitches do: [ :pitch |
		pitch alter = (accidentalDict at: pitch step asSymbol, pitch octave ifAbsent: [ dict at: pitch step ifAbsent: 0 ])
			ifFalse: [ collection add: (lineBlock value: pitch) -> pitch alter ]].
	
	^ collection