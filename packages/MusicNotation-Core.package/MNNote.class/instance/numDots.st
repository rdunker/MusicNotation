accessing
numDots
	self haltIfDurationIsUnsupported.
	^ self duration numerator highBit - 1