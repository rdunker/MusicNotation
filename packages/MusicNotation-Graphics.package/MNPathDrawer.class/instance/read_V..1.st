parsing
read_V
	| end |
	end := (self lastPosition x @ self readNumber).
	self addLineTo: end.
	self moveTo: end.