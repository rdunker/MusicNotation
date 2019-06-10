tests
testCbMajor
	| key steps |
	steps := { $b . $e . $a . $d . $g . $c . $f }.
	key := MNFifthsKey new fifths: -7.
	
	self assert: 7 equals: key symbols size.
	
	key symbols keysAndValuesDo: [ :index :symbol |
		self assert: symbol isFlat.
		self assert: (steps at: index) equals: symbol step ]