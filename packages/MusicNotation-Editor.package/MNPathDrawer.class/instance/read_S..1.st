as yet unclassified
read_S
	| end mid1 mid2 |
	mid1 := self mirroredControlPoint.
	mid2 := self readPoint.
	end := self readPoint.
	self addCubicSegment: { self lastPosition . mid1 . mid2 . end }.
	self moveTo: end.
	self lastControlPoint: mid2.