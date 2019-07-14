accessing
augmented: aStep
	(self class isPerfect: aStep)
		ifTrue: [ self perfect: aStep ]
		ifFalse: [ self major: aStep ].
	self halfSteps: self halfSteps + 1.