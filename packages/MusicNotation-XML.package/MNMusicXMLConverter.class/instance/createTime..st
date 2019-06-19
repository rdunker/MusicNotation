converting
createTime: aFraction
	| xml |
	xml := XMLElement named: #time.
	
	xml addElement: (self stringNamed: #beats content: aFraction numerator).
	xml addElement: (self stringNamed: #'beat-type' content: aFraction denominator).
	
	^ xml