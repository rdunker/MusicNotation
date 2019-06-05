parsing
closeShape
	self lastPosition = self lastStart ifFalse: [
		self addLineTo: self lastStart.
		self moveTo: self lastStart. ].