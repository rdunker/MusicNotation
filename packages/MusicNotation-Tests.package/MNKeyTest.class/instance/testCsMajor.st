tests
testCsMajor
	| key steps |
	steps := { $f . $c . $g . $d . $a . $e . $b }.
	key := MNFifthsKey new fifths: 7.
	
	self assert: 7 equals: key accidentals size.
	
	key accidentals keysAndValuesDo: [ :index :symbol |
		self assert: 1 equals: symbol value.
		self assert: (steps at: index) equals: symbol key ]