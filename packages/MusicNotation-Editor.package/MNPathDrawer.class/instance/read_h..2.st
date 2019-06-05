parsing
read_h
	| end |
	end := self lastPosition + (self readNumber @ 0).
	self addLineTo: end.
	self moveTo: end.