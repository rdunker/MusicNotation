transposing
setFromHalfSteps: anInteger asSharp: aBoolean

	"sets this Pitch's octave, step and alter to the absolute halfstep anInteger"
	| alter step halfStepInOctave |
	self octave: anInteger // 12.
	halfStepInOctave := anInteger \\ 12.
	
	alter := #(0 1 0 1 0 0 1 0 1 0 1 0 ) at: (halfStepInOctave + 1).
	aBoolean
		ifFalse: [alter := -1 * alter].
	step := MNPitch halfStepSymbols at: (halfStepInOctave + 1 - alter).
	self alter: alter.
	self step: step.