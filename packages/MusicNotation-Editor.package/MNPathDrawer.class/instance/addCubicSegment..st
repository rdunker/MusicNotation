parsing
addCubicSegment: vertices
	self shape add: (Bezier3Segment convertBezier3ToBezier2: (self transformVertices: vertices)).