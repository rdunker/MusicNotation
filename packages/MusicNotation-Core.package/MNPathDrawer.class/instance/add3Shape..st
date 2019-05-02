as yet unclassified
add3Shape: shape
	| verticies |
	verticies := shape collect: [ :p | p * 0.3 + self offset + (100@100) ].
	self shapes add: (Bezier3Segment convertBezier3ToBezier2: verticies).