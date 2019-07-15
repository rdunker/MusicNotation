initialize-release
initialize
	super initialize.
	
	self tieStart: false;
		tieStop: false;
		slurStart: false;
		slurStop: false;
		chordPart: false.