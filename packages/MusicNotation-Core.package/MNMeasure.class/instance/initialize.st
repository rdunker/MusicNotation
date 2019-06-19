initialize-release
initialize
	super initialize.
	
	key := self privateAdopt: MNEmptyKey new.
	time := Fraction numerator: 4 denominator: 4.
	clef := self privateAdopt: MNClef new.