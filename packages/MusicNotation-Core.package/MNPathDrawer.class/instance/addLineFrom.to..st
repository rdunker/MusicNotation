as yet unclassified
addLineFrom: start to: end
	self addSegment: { start . (start + end) / 2 . end }.