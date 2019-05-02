as yet unclassified
addLineFrom: start to: end
	self addShape: { start . (start + end) / 2 . end }.