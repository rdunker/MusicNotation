calculating
isDiagonal
	^ self isDiagonalOrSamePitch and: [(self notes first noteLayout noteHeight = self notes last noteLayout noteHeight) not]