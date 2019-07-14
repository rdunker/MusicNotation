converting
createCopiesRecursivelyForDuration: aDuration withBlock: aBlock
	| powerOfTwo remainder note |
	aDuration strictlyPositive
		ifFalse: [ ^ OrderedCollection new ].
		
	powerOfTwo := Fraction numerator: 8 denominator: 1.
	[ powerOfTwo > aDuration ]
		whileTrue: [ powerOfTwo := powerOfTwo / 2 ].
		
	remainder := aDuration - powerOfTwo.
	note := self copy.
	aBlock value: note.
	note duration: powerOfTwo.
	^ (self createCopiesForDuration: remainder withBlock: aBlock) add: note;
		yourself