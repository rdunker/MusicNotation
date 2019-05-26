calculating
calculateNotehead
	| dur |
	dur := self note baseDuration.
	^ dur isInteger
		ifTrue: [ dur == 2
			ifTrue: [ 16rE0A0 ]
			ifFalse: [ 16rE0A2 ]]
		ifFalse: [ dur denominator = 2
			ifTrue: [ 16rE0A3 ]
			ifFalse: [ 16rE0A4 ]].