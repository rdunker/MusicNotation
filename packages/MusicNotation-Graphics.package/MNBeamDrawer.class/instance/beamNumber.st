calculating
beamNumber
	^ (self log2: self endNote note duration denominator) - 2.0
