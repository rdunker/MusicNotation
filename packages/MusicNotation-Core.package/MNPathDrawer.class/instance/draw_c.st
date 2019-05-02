as yet unclassified
draw_c
	| end mid1 mid2 |
	mid1 := self readRelativePoint.
	mid2 := self readRelativePoint.
	end := self readRelativePoint.
	self add3Shape: { self position . mid1 . mid2 . end }.
	self moveTo: end.