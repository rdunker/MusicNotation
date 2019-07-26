accessing
halfSteps
	^ self octave * 12 + (self class halfStepCollection indexOf: self step) - 1 + self alter