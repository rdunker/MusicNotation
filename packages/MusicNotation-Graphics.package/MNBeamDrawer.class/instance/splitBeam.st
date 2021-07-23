updating
splitBeam
	| firstHalf secondHalf |
	
	firstHalf := OrderedCollection new add: self notes first; add: self notes second; yourself.
	secondHalf := OrderedCollection new add: self notes third; add: self notes last; yourself.
	
	self notes: firstHalf.
	self draw.
	self notes: secondHalf.