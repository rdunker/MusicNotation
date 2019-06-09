accessing
symbols
	| symbolCollection |
	fifths = 0 ifTrue: [ ^ { } ].
	fifths > 0 	
		ifTrue: [ symbolCollection := self class sharpCollection ]
		ifFalse: [ symbolCollection := self class flatCollection ].
	^ symbolCollection copyFrom: 1 to: fifths abs