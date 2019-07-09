calculating
calculateAccidentalDictionaryForNote: aNote
	| dict |
	dict := aNote leftSibling
		ifNil: [ Dictionary new ]
		ifNotNilDo: [ :s | self calculateAccidentalDictionaryForNote: s ].
		
	aNote pitches do: [ :pitch |
		dict add: (pitch step asSymbol, pitch octave) -> pitch alter ].
	
	^ dict