enumerating
accidentalCodePointsDo: aBlock
	self accidentals do: [ :each |
		aBlock
			value: each key
			value: (self codePointOf: each value) ]