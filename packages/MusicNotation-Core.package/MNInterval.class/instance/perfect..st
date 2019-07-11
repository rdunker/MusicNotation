accessing
perfect: aStep
	| halfSteps |
	(self class isPerfect: aStep)
		ifFalse: [ MNInvalidValue for: self at: #major
			value: aStep description: 'cannot create perfect interval with these steps' ].
	self steps: aStep - 1.
	halfSteps := self steps * 2 - 1.
	halfSteps < 0 ifTrue: [ halfSteps := halfSteps + 1 ].
	self halfSteps: halfSteps.