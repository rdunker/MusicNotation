parsing
parseTime: xmlTime
	^ Fraction
		numerator: (self stringNamed: #beats in: xmlTime) asInteger
		denominator: (self stringNamed: #'beat-type' in: xmlTime) asInteger