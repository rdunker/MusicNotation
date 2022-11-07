calculating
calculateRest
	| duration |
	duration := self note baseDuration.
	^ duration isInteger
		ifTrue: [ 16rE4E4 - duration highBit]
		ifFalse: [ 16rE4E2 + duration denominator highBit ]