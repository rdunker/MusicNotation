accessing
stemLength
	stemLength ifNil: [^ self stemDirection * self stemLengthFactor].
	^ stemLength.