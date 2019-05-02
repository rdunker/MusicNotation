as yet unclassified
draw_h
	| end |
	end := self position + (self readNumber @ 0).
	self addLineFrom: self position to: end.
	self moveTo: end.