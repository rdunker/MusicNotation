tests
testIsEighthOrShorter
	"Ignore while linting"
	| note |
		
	note := MNNote new
		duration: 1/1;
		yourself.
	self assert: note isEighthOrShorter not.
		
	note := MNNote new
		duration: 1/4;
		yourself.
	self assert: note isEighthOrShorter not.
		
	note := MNNote new
		duration: 1/8;
		yourself.
	self assert: note isEighthOrShorter.
	
	note := MNNote new
		duration: 1/16;
		yourself.
	self assert: note isEighthOrShorter.