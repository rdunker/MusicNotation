drawing
drawCornerAt: aMNNoteMorph offset: aPoint extent: aExtent
	| offset |
	
	offset := aPoint.
	offset := offset + (0@(self maxHeightOffset: aMNNoteMorph)).
	self drawRectangleFrom: ((self calculateNotePosition: aMNNoteMorph) + offset) To: self verticalExtent.
	self startNote noteLayout up ifFalse: [offset := offset - (0@(-1 * (self verticalExtent y-2)))].
	self drawRectangleFrom: ((self calculateNotePosition: aMNNoteMorph) + offset) To: aExtent.