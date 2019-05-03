tests
testAlterNtoFChange
	| pitch |
	pitch := self samplePitch.
	self assert: pitch fires: [ pitch alter: -1 ] events: #(alter isNormal isFlat frequency).