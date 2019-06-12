parsing
read_m
	self closeShape.
	self moveTo: self readRelativePoint.
	self lastStart: self lastPosition.