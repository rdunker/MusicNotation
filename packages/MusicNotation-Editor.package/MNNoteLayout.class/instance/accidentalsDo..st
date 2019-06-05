accessing
accidentalsDo: aBlock
	self note pitches with: self lines do: [ :pitch :line |
		pitch isNormal
			ifFalse: [ aBlock value: 16rE261 + pitch alter value: line ]].