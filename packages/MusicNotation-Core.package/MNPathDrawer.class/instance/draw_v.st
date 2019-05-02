as yet unclassified
draw_v
	| end |
	end := self position + (0 @ self readNumber).
	self addLineFrom: self position to: end.
	self moveTo: end.