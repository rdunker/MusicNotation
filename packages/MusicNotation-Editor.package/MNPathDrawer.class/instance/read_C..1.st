parsing
read_C
	| end mid1 mid2 |
	mid1 := self readPoint.
	mid2 := self readPoint.
	end := self readPoint.
	self addCubicSegment: { self lastPosition . mid1 . mid2 . end }.
	self moveTo: end.
	self lastControlPoint: mid2.