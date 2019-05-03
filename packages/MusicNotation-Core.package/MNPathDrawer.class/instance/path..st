accessing
path: aStreamOrString
	path := aStreamOrString isString
		ifTrue: [ ReadStream on: aStreamOrString ]
		ifFalse: [ aStreamOrString ].