updating
update
	self
		updateLinesAndUp: self calculateLines;
		updateLeftAndRightNoteheads;
		dots: self calculateDots;
		accidentals: self calculateAccidentals;
		updateNoteheadAndFlag.
	
	super update.