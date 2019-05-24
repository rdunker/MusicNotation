debugging
haltIfDurationIsUnsupported
	self duration denominator isPowerOfTwo
		ifFalse: [ self halt: 'duration denominator (', self duration denominator ,') is not a power of two' ].
	(self duration numerator + 1) isPowerOfTwo
		ifFalse: [ self halt: 'duration numerator (', self duration numerator ,') is not dottable' ].