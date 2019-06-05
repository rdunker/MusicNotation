tests
manualTestPlayC4Note
	| pitch |
	pitch := MNPitch new
		step: $c;
		octave: 4;
		alter: 0;
		yourself.	
	(MNNote new
		duration: 1;
		addPitch: pitch;
		yourself) asSound play