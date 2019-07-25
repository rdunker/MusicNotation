calculating
calculateAccidentals
	| dict accidentalDict lineBlock |
	dict := self note parent
		ifNil: [ Dictionary new ]
		ifNotNilDo: [ :measure | measure key accidentals as: Dictionary ].
	
	accidentalDict := self calculateAccidentalDictionaryForNote: self note leftSibling.
	lineBlock := self lineConverterBlock.
	
	^ self note pitches
		select: [ :pitch | self alterChangedAt: pitch withAccidentals: accidentalDict andKeyDictionary: dict ]
		thenCollect: [ :pitch | (lineBlock value: pitch) -> pitch alter ]