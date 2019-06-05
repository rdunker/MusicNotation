accessing
flexBase
	^ (self widthOfCodePoint: self topCodePoint)
		max: (self widthOfCodePoint: self bottomCodePoint).