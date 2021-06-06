updating
update
	self
		updateLinesAndUp: self calculateLines;
		updateLeftAndRightNoteheads;
		dots: self calculateDots;
		dynamics: self calculateDynamics;
		updateAccidentals;
		updateNoteheadAndFlag.
	
	super update.