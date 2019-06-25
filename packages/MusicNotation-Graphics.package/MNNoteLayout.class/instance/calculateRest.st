calculating
calculateRest
	| dur |
	dur := self note baseDuration.
	^ dur isInteger
		ifTrue: [ 16rE4E4 - dur highBit]
		ifFalse: [ 16rE4E2 + dur denominator highBit ]