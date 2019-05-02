as yet unclassified
finish
	self shapes ifEmpty: [ ^ self ].
	self drawShapeBlock value: self shapes.
	self shapes removeAll.