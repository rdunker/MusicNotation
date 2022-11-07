accessing
tiedBlock
	^ [ :note |
		note tieStart: true;
			tieStop: true ]