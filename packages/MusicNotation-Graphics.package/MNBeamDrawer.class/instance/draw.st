drawing
draw
	| start end |
	
	self removeFlags.
	self isDiagonalOrSamePitch ifFalse: [self growStems].
	
	start := self calculateNotePosition: self startNote.
	end := self calculateNotePosition: self endNote.
	
	self drawLinesFrom: start to: end.