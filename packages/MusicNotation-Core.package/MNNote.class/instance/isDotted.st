testing
isDotted
	self validateDuration.
	^ self duration isInteger
		ifTrue: [ self duration isPowerOfTwo not ]
		ifFalse: [ self duration numerator > 1 ]