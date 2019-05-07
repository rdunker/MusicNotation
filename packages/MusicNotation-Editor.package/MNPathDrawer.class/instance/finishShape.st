as yet unclassified
finishShape
	self shape ifEmpty: [ ^ self ].
	self drawCurrentShape.
	self shape removeAll.