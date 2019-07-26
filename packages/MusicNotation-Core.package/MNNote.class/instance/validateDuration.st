validating
validateDuration
	self duration strictlyPositive
		ifFalse: [ MNInvalidValue for: self at: #duration description: 'duration is not strictly positive' ].
	self duration denominator isPowerOfTwo
		ifFalse: [ MNInvalidValue for: self at: #duration description: 'denominator is not a power of two' ].
	(self durationNumerator2 + 1) isPowerOfTwo
		ifFalse: [ MNInvalidValue for: self at: #duration description: 'numerator is not dottable' ].