as yet unclassified
read_t
	| end mid |
	mid := self mirroredControlPoint.
	end := self readRelativePoint.
	self addSegment: { self lastPosition . mid . end }.
	self moveTo: end.
	self lastControlPoint: mid.