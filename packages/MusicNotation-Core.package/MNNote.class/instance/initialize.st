initialize-release
initialize
	super initialize.
	
	self tieStart: false;
		slurStart:false;
		tieStop: false;
		slurStop:false;
		chordPart: false.
