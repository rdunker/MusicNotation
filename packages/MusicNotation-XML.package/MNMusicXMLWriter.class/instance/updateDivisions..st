accessing
updateDivisions: aMeasure
	| div |
	div := 4.
	aMeasure notes do: [ :note |
		div := div lcm: note duration denominator ].		
	self divisions: div.