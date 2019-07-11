accessing
major: aStep
	| halfSteps |
	(self class isPerfect: aStep)
		ifTrue: [ MNInvalidValue for: self at: #major
			value: aStep description: 'cannot create non-perfect interval with these steps' ].
	self steps: aStep - 1.
	halfSteps := (self steps rem: 7) * 2 - 1.
	halfSteps < 4 ifTrue: [ halfSteps := halfSteps + 1 ].
	self halfSteps: 12 * (self steps // 7) + halfSteps.