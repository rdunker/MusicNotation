accessing
perfect: aStep
	(self class isPerfect: aStep)
		ifFalse: [ MNInvalidValue for: self at: #major
			value: aStep description: 'cannot create perfect interval with these steps' ].
	self setSteps: aStep isPerfect: true.