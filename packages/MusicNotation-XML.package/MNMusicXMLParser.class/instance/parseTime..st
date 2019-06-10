parsing
parseTime: xmlKey
	| time |
	time := MNTime new.
	self stringNamed: #beats in: xmlKey
		ifPresent: [ :beats | 
			time beats: beats asInteger].
	self stringNamed: #'beat-type' in: xmlKey
		ifPresent: [ :beatType | 
			time beatType: beatType asInteger].
	^ time