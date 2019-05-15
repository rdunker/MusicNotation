as yet unclassified
read_s
	| end mid1 mid2 |
	mid1 := self mirroredControlPoint.
	mid2 := self readRelativePoint.
	end := self readRelativePoint.
	self addCubicSegment: { self lastPosition . mid1 . mid2 . end }.
	self moveTo: end.
	self lastControlPoint: mid2.