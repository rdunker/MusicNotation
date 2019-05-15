adding
addMeasure: aMeasure
	aMeasure notes do: [ :each |
		self addNote: each ].