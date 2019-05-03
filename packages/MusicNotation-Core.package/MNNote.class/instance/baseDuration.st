accessing
baseDuration

	| duration |
	duration := self duration.
	duration numerator == 3 ifTrue: [ duration := duration * (Fraction numerator: 2 denominator: 3) reduced].
	^ duration reduced.