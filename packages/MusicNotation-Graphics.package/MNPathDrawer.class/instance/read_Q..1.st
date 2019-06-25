parsing
read_Q
	| end mid |
	mid := self readPoint.
	end := self readPoint.
	self addSegment: { self lastPosition . mid . end }.
	self moveTo: end.
	self lastControlPoint: mid.