tests
assertFrequencyOnAnotherOctave: pitch
	| octave |
	octave := pitch octave.
	self assert: pitch frequency equals: (pitch copy octave: octave - 1; frequency) * 2.
	self assert: pitch frequency * 2 equals: (pitch copy octave: octave + 1; frequency).