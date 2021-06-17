drawing
draw
	| start end|

	start := (self calculateNotePosition: self startNote).
	end := (self calculateNotePosition: self endNote).

	self startNote noteLayout drawFlag: false.
	self endNote noteLayout drawFlag: false.
	
	self canvas line: (start + (2.5@2.5)) to: (end + (-2.5@2.5)) width: (self beamHeight) color: (Color black).