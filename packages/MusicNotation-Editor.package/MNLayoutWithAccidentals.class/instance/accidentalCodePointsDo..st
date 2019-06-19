enumerating
accidentalCodePointsDo: aBlock
	self accidentals do: [ :each |
		aBlock
			value: (self accidentalCodePointOf: each value)
			value: each key ]