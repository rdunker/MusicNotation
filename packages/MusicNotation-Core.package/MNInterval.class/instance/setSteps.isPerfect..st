accessing
setSteps: aStep isPerfect: aBoolean
	| halfSteps threshold |
	self steps: aStep - 1.
	threshold := aBoolean
		ifTrue: [ 0 ]
		ifFalse: [ 4 ].
	halfSteps := (self steps rem: 7) * 2 - 1.
	halfSteps < threshold ifTrue: [ halfSteps := halfSteps + 1 ].
	self halfSteps: 12 * (self steps // 7) + halfSteps.