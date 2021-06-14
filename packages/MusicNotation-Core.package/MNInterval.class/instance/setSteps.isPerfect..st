accessing
setSteps: aStep isPerfect: aBoolean
	| numHalfSteps threshold |
	self steps: aStep - 1.
	threshold := aBoolean
		ifTrue: [ 0 ]
		ifFalse: [ 4 ].
	numHalfSteps := (self steps rem: 7) * 2 - 1.
	numHalfSteps < threshold ifTrue: [ numHalfSteps := numHalfSteps + 1 ].
	self halfSteps: 12 * (self steps // 7) + numHalfSteps.