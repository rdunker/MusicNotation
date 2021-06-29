drawing
draw
	| start end |
	
	self removeFlags.
	self isDiagonalOrSamePitch ifFalse: [self growStems].
	
	start := (self calculateNotePosition: self notes last).
	end := (self calculateNotePosition: self notes first).
	
	self drawLinesFrom: start to: end.