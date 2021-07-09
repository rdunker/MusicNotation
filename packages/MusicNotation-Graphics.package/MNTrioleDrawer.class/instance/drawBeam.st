drawing
drawBeam

	| offsetStart offsetEnd |

	offsetStart := -5@(-10).
	offsetEnd := 5@(-10).
	self canvas
			drawRectangle: (((self calculateNotePosition: self startNote) + offsetStart) extent: ((self calculateNotePosition: self endNote) - (self calculateNotePosition: self startNote) + (2*offsetEnd)) x@4)
			color: Color black
			borderWidth: 0
			borderColor: nil.