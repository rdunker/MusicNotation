accessing
createIntervalFrom: aPitch withInterval: anInterval andHalfSteps: aNumber
	| steps step possiblePitches |
	steps := #cdefgab.
	step := steps at: (((steps indexOf: aPitch step) + anInterval + 5 rem: 7) + 1).
	
	possiblePitches := self pitchesFromHalfSteps: (((self halfStepsFromPitch: aPitch) + aNumber)).
	
	possiblePitches do: [ :pitch |
		pitch step == step ifTrue: [ ^ pitch ] ].
	MNInvalidValue for: self at: #createIntervalFrom value: aPitch description: 'cannot create interval for pitch'.