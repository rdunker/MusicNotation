calculation
beamNumber
	^ (self log2: self notes first note duration denominator) - 2.0
