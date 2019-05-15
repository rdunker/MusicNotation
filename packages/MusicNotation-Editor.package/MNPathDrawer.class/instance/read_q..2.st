as yet unclassified
read_q
	| end mid |
	mid := self readRelativePoint.
	end := self readRelativePoint.
	self addSegment: { self lastPosition . mid . end }.
	self moveTo: end.
	self lastControlPoint: mid.