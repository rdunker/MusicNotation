tests
testCbMajor
	| key steps |
	steps := { $b . $e . $a . $d . $g . $c . $f }.
	key := MNFifthsKey new fifths: -7.
	
	self assert: 7 equals: key accidentals size.
	
	key accidentals keysAndValuesDo: [ :index :symbol |
		self assert: -1 equals: symbol value.
		self assert: (steps at: index) equals: symbol key ]