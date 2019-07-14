accessing
major: aStep
	(self class isPerfect: aStep)
		ifTrue: [ MNInvalidValue for: self at: #major
			value: aStep description: 'cannot create non-perfect interval with these steps' ].
	self setSteps: aStep isPerfect: false.