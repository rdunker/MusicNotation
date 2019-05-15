transposing
halfStepPosition

	"returns absolute position in halfsteps"	
	| halfSteps |
	
	halfSteps := (MNPitch halfStepSymbols indexOf: self step) - 1.
	halfSteps := halfSteps + (self octave * 12).
	halfSteps := halfSteps + alter.
	^ halfSteps
