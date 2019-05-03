tests
testAlterFtoSChange
	| pitch |
	pitch := self samplePitch.
	pitch alter: -1.
	self assert: pitch fires: [ pitch alter: 1 ] events: #(alter isFlat isSharp frequency).