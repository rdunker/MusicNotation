validating
validateDuration
	self duration denominator isPowerOfTwo
		ifFalse: [ MNInvalidValue for: self at: #duration description: 'denominator is not a power of two' ].
	 (self durationNumerator2 + 1) isPowerOfTwo
		ifFalse: [ MNInvalidValue for: self at: #duration description: 'numerator is not dottable' ].