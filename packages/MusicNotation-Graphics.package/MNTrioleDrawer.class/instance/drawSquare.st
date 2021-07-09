drawing
drawSquare

	| offset |

	self canvas
			drawRectangle: ((self calculateNotePosition: self startNote) extent: self rectangleExtent)
			color: Color gray
			borderWidth: 0
			borderColor: nil.