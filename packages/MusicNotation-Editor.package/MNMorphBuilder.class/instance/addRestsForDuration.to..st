converting
addRestsForDuration: aDuration to: aMorph
	| powerOfTwo remainder |
	aDuration strictlyPositive
		ifFalse: [ ^ self ].
		
	powerOfTwo := Fraction numerator: 8 denominator: 1.
	[ powerOfTwo > aDuration ]
		whileTrue: [ powerOfTwo := powerOfTwo / 2 ].
		
	remainder := aDuration - powerOfTwo.
	self addRestsForDuration: remainder to: aMorph.
	self add: (MNNote new duration: powerOfTwo) to: aMorph.