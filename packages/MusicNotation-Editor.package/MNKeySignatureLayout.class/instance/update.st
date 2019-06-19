updating
update
	self
		allFlatLines: self calculateAllFlatLines;
		allSharpLines: self calculateAllSharpLines;
		updateAccidentals.
	
	super update.