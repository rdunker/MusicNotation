accessing
atInterval: anInterval withHalfSteps: aNumber
	| steps step |
	steps := #cdefgab.
	step := steps at: ((steps indexOf: self step) + anInterval - 2 + 7 rem: 7) + 1.
	
	^ self class fromHalfSteps: (self halfSteps + aNumber) atStep: step