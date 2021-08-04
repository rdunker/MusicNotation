validating
isEighthOrShorter
	self triole isEmpty 
		ifFalse: [^ self duration denominator * (2/3) >= 8]
		ifTrue: [^ self duration denominator >= 8].