parsing
read_L
	| end |
	end := self readPoint.
	self addLineTo: end.
	self moveTo: end.