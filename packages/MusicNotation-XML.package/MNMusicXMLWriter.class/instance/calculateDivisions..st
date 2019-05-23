calculating
calculateDivisions: aMeasure

	| divisions |
	divisions := 1.
	aMeasure notes do:
		[ :note |
			divisions := divisions lcm: (Fraction
				numerator: (note duration denominator)
				denominator: 4)
			reduced numerator ].
		
	^ divisions