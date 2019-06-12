accessing
durationNumerator2
	"The duration numerator of any fraction in the form of x / (2^i)"
	"and i could be negative (e.g. 12 = 3 / (2 ^ -2) )"
	| num |
	num := self duration numerator.
	self duration isInteger
		ifTrue: [ num := num // (num gcd: 128) ].
	^ num