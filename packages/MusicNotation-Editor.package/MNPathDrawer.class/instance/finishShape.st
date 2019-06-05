parsing
finishShape
	self shape ifEmpty: [ ^ self ].
	self drawCurrentShape.
	self shape removeAll.