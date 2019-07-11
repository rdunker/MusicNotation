accessing
diminished: aStep
	(self class isPerfect: aStep)
		ifTrue: [ self perfect: aStep ]
		ifFalse: [self minor: aStep ].
	self halfSteps: self halfSteps - 1.