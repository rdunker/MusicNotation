tests
testStepChange
	| pitch |
	pitch := self samplePitch.
	self assert: pitch fires: [ pitch step: $c ] events: #(step frequency).