updating
update
	self
		updateLinesAndUp: self calculateLines;
		updateLeftAndRightNoteheads;
		dots: self calculateDots;
		updateAccidentals;
		updateNoteheadAndFlag.
	
	super update.