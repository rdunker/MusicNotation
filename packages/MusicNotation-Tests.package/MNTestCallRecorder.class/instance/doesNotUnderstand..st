error handling
doesNotUnderstand: aMessage
	self isRecording
		ifTrue: [ self calls add: aMessage ]
		ifFalse: [ ^ super doesNotUnderstand: aMessage ].