converting
createRestsForDuration: aDuration
	| powerOfTwo remainder |
	aDuration = 0
		ifTrue: [ ^ OrderedCollection new ].
		
	powerOfTwo := Fraction numerator: 4 denominator: 1.
	[ powerOfTwo > aDuration ]
		whileTrue: [ powerOfTwo := powerOfTwo / 2 ].
		
	remainder := aDuration - powerOfTwo.
	^ (self createRestsForDuration: remainder)
		addLast: (MNNote new duration: powerOfTwo);
		yourself