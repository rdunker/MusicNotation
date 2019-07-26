parsing
read_c
	| end mid1 mid2 |
	mid1 := self readRelativePoint.
	mid2 := self readRelativePoint.
	end := self readRelativePoint.
	self addCubicSegment: { self lastPosition . mid1 . mid2 . end }.
	self moveTo: end.