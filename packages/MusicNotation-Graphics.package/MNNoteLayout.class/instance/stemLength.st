accessing
stemLength
	stemLength ifNil: [^ self stemDirection * 3.5].
	^ stemLength.