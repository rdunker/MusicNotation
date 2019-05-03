as yet unclassified
read_z
	self shape ifEmpty: [ ^ self ].
	self lastPosition = self lastStart ifFalse: [
		self addLineTo: self lastStart.
		self moveTo: self lastStart. ]. 
	self finishShape.