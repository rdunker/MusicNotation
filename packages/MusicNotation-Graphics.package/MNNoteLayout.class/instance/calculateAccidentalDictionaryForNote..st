calculating
calculateAccidentalDictionaryForNote: aNote
	| dict |
	aNote ifNil: [ ^ Dictionary new ].
	dict := self calculateAccidentalDictionaryForNote: aNote leftSibling.
		
	aNote pitches do: [ :pitch |
		dict at: pitch step asSymbol, pitch octave put: pitch alter ].
	
	^ dict