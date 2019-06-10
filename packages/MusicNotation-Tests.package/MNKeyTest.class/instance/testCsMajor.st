tests
testCsMajor
	| key steps |
	steps := { $f . $c . $g . $d . $a . $e . $b }.
	key := MNFifthsKey new fifths: 7.
	
	self assert: 7 equals: key symbols size.
	
	key symbols keysAndValuesDo: [ :index :symbol |
		self assert: symbol isSharp.
		self assert: (steps at: index) equals: symbol step ]