converting
halfStepsOf: aPitch
	| halfSteps |
	halfSteps := (self halfStepSymbols indexOf: aPitch step) - 1.
	halfSteps := halfSteps + (aPitch octave * self halfStepsInOctave).
	halfSteps := halfSteps + aPitch alter.
	^ halfSteps