tests
testInvalidAlter
	self should: [ MNPitch new alter: -2 ] raise: MNInvalidValue.
	self should: [ MNPitch new alter: -0.5 ] raise: MNInvalidValue.
	self should: [ MNPitch new alter: 0.5 ] raise: MNInvalidValue.
	self should: [ MNPitch new alter: 2 ] raise: MNInvalidValue.