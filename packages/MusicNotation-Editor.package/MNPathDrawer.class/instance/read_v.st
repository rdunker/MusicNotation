as yet unclassified
read_v
	| end |
	end := self lastPosition + (0 @ self readNumber).
	self addLineTo: end.
	self moveTo: end.