accessing
frequency
	| newStep |
	(self alter abs < 2)
		ifTrue: [ ^ AbstractSound pitchForName: self step asSymbol, self alterString, self octave ].
	newStep := self class stepCollection at: ((self steps + self alter sign + 7 rem: 7) + 1).
	^ (self class fromHalfSteps: self halfSteps atStep: newStep) frequency