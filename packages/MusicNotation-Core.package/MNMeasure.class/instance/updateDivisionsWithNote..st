updating
updateDivisionsWithNote: aNote
	
	self divisions: (self divisions lcm: 
		(Fraction
			numerator: (aNote duration denominator)
			denominator: 4)
		reduced numerator)