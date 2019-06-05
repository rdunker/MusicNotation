parsing
addCubicSegment: verticies
	self shape add: (Bezier3Segment convertBezier3ToBezier2: (self transformVerticies: verticies)).