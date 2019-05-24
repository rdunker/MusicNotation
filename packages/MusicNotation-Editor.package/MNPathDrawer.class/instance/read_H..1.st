as yet unclassified
read_H
	| end |
	end := (self readNumber @ self lastPosition y).
	self addLineTo: end.
	self moveTo: end.