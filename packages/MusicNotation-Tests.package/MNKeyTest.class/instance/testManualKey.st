tests
testManualKey
	| key |
	key := MNCustomKey accidentals: {
		$c -> 1 .
		$d -> -1 .
		$e -> 0
	}.
		
	self assert: 3 equals: key accidentals size.
	
	self assert: $c equals: key accidentals first key.
	self assert: 1 equals: key accidentals first value.
	
	self assert: $d equals: key accidentals second key.
	self assert: -1 equals: key accidentals second value.
	
	self assert: $e equals: key accidentals third key.
	self assert: 0 equals: key accidentals third value.