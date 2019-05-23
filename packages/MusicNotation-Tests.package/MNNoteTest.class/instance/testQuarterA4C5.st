as yet unclassified
testQuarterA4C5

	| note pitchA4 pitchC5 |
	pitchA4 := MNPitch new
		octave: 4;
		step: $a;
		yourself.
		
	pitchC5 := MNPitch new
		octave: 5;
		step: $c;
		yourself.
		
	note := MNNote new
		duration: 1/4;
		addPitch: pitchA4;
		addPitch: pitchC5;
		yourself.
		
	self assert: 1/4 equals: note duration.
	self assert: pitchA4 equals: note pitches first.
	self assert: pitchC5 equals: note pitches second.
	self assert: 2 equals: note pitches size.
	