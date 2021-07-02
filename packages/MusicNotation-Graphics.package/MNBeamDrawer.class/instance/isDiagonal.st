calculating
isDiagonal
	^ self isDiagonalOrSamePitch and: [(self endNote noteLayout noteHeight = self startNote noteLayout noteHeight) not]