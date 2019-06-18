updating
update
	self
		allFlatLines: self calculateAllFlatLines;
		allSharpLines: self calculateAllSharpLines;
		accidentals: self calculateAccidentals.
	
	super update.