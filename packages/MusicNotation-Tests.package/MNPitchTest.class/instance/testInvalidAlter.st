tests
testInvalidAlter
	self should: [ MNPitch new alter: -3 ] raise: MNInvalidValue.
	self should: [ MNPitch new alter: -0.5 ] raise: MNInvalidValue.
	self should: [ MNPitch new alter: 0.5 ] raise: MNInvalidValue.
	self should: [ MNPitch new alter: 3 ] raise: MNInvalidValue.