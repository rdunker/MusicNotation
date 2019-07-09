calculating
calculateAccidentals
	| collection dict accidentalDict |
	dict := self note parent
		ifNil: [ Dictionary new ]
		ifNotNilDo: [ :p | p key accidentals as: Dictionary ].
	
	accidentalDict := self note leftSibling
		ifNil: [ Dictionary new ]
		ifNotNilDo: [ :s | self calculateAccidentalDictionaryForNote: s ].
	
	collection := OrderedCollection new.
	
	self note pitches with: self lines do: [ :pitch :line |
		pitch alter = (accidentalDict at: (pitch step asSymbol, pitch octave) ifAbsent: (dict at: pitch step ifAbsent: 0))
			ifFalse: [ collection add: line -> pitch alter ]].
	
	^ collection