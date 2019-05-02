adding
updateDivisions: anMNNote
	
	self divisions: (self divisions lcm: 
		(Fraction
			numerator: (anMNNote duration denominator)
			denominator: 4)
		reduced numerator)