calculating
beamNumber
	^ (self log2: self notes last note duration denominator) - 2.0
