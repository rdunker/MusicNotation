transposing
transpose: aPitch
	| steps step |
	steps := #cdefgab.
	step := steps at: ((steps indexOf: aPitch step) + self steps - 1 + 7 rem: 7) + 1.
	
	^ MNPitch fromHalfSteps: (aPitch halfSteps + self halfSteps) atStep: step