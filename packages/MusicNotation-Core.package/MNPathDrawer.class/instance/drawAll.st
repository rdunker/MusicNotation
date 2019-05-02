as yet unclassified
drawAll
	| last |
	last := self pathComponents size.
	
	self drawNextShape.
	
	self pathComponents size < last ifFalse: [ ^ self ].
	self pathComponents ifNotEmpty: [ ^ self drawAll ].
	
	self finish.