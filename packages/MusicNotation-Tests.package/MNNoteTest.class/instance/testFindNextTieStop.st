tests
testFindNextTieStop

	| measure note1 note2 note3 test |
		
	note1 := MNNote new
		duration: 1/4;
		tieStart: true;
		yourself.
		
	note2 := MNNote new
		duration: 1/4;
		yourself.
		
	note3 := MNNote new
		duration: 1/4;
		tieStop: true;
		yourself.
		
	measure := MNMeasure new
		addNote: note1;
		addNote: note2;
		addNote: note3;
		yourself.
		
	test := measure notes first findNextTieStop.
		
	self assert: test equals: measure notes last.
	