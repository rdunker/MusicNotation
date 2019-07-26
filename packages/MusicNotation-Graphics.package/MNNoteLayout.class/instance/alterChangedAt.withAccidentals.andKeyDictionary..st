calculating
alterChangedAt: aPitch withAccidentals: anAccidentalDictionary andKeyDictionary: aKeyDictionary
	^ (aPitch alter = (anAccidentalDictionary at: aPitch step asSymbol, aPitch octave
		ifAbsent: [ aKeyDictionary at: aPitch step
			ifAbsent: 0 ])) not