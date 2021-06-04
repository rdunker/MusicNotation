initialize-release
initialize
	super initialize.
	
	self key: MNEmptyKey new.
	self time: (Fraction numerator: 4 denominator: 4).
	self clef: MNClef new.
	self isAfterPrelude: false.
	self isPrelude: false.