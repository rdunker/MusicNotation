tests
test4Over4Time
	| time |
	time := MNTime new
		beats: 4;
		beatType: 4.
	
	self assert: 4 equals: time beats.
	self assert: 4 equals: time beatType