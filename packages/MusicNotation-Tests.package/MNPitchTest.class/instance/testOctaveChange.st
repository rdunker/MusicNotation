tests
testOctaveChange
	| pitch |
	pitch := self samplePitch.
	self assert: pitch fires: [ pitch octave: 3 ] events: #(octave frequency).