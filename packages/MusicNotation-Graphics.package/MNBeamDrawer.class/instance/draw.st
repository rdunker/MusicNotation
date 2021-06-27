drawing
draw
	| end start |
	
	self removeFlags.
	self isDiagonal ifFalse: [self growStems].
	
	start := (self calculateNotePosition: self notes last).
	end := (self calculateNotePosition: self notes first).
	
	self drawLinesFrom: start to: end.

