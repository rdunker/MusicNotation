parsing
read_T
	| end mid |
	mid := self mirroredControlPoint.
	end := self readPoint.
	self addSegment: { self lastPosition . mid . end }.
	self moveTo: end.
	self lastControlPoint: mid.