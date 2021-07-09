drawing
drawSquareAt: aMNNoteMorph

	| offset extent help |
	offset := 0@((self noteHeight: ((self notes select: [:note | note noteLayout noteHeight = self maxHeight]) first)) - (self noteHeight: aMNNoteMorph)).
	extent := self rectangle2Extent.
	help := self rectangleExtent.
	aMNNoteMorph = self startNote ifTrue: [offset := offset + (-5@(-15))].
	aMNNoteMorph = self endNote ifTrue: [offset := offset + (4@(-15)). extent := (-1*(self rectangle2Extent x)+1.0)@self rectangle2Extent y].
	
	aMNNoteMorph noteLayout up ifFalse: [offset := offset - (0@(-25))].

	self canvas
			drawRectangle: (((self calculateNotePosition: aMNNoteMorph) + offset) extent: help)
			color: Color black
			borderWidth: 0
			borderColor: nil.
			
	aMNNoteMorph noteLayout up ifFalse: [offset := offset - (0@(-1 * (self rectangleExtent y-2)))].
			
	self canvas
			drawRectangle: (((self calculateNotePosition: aMNNoteMorph) + offset) extent: extent)
			color: Color black
			borderWidth: 0
			borderColor: nil.