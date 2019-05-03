tests
testAlterFtoNChange
	| pitch |
	pitch := self samplePitch.
	pitch alter: -1.
	self assert: pitch fires: [ pitch alter: 0 ] events: #(alter isFlat isNormal frequency).