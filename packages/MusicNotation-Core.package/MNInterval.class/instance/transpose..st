transposing
transpose: aPitch
	| numSteps step |
	numSteps := #cdefgab.
	step := numSteps at: ((numSteps indexOf: aPitch step) + self steps - 1 + 7 rem: 7) + 1.
	
	^ MNPitch fromHalfSteps: (aPitch halfSteps + self halfSteps) atStep: step