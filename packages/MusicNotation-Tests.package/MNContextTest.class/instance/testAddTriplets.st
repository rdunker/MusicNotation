tests
testAddTriplets
	"Ignore while linting"
	| context firstNote thirdNote fourthNote |
	context := MNContext new.

	context addNote: self createC4.
	context addNote: self createC4.
	context addNote: self createC4.
	context triole.
	context addNote: self createC4.
	
	firstNote := context measure notes first.
	fourthNote := context measure notes last.
	thirdNote := context measure notes third.
	
	self assert: (firstNote triole isEmpty not).
	self assert: (thirdNote triole isEmpty not).
	self assert: (fourthNote triole isEmpty).
	
	self assert: (firstNote duration = (1/6)).
	self assert: (thirdNote duration = (1/6)).
	self assert: (fourthNote duration = (1/4)).