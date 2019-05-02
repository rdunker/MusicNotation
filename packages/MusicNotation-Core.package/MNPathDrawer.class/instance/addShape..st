as yet unclassified
addShape: shape
	self shapes add: (shape collect: [ :p | p * 0.3 + self offset + (100@100) ]).