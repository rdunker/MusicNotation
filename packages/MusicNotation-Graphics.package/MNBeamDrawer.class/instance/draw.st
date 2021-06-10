drawing
draw

	| start end|

	start := (self calculateNotePosition: self startNote).
	end := (self calculateNotePosition: self endNote).

	self canvas drawRectangle: (start extent: (end x - start x)@ self beamHeight)
		color: Color black
			borderWidth: 0
			borderColor: nil.