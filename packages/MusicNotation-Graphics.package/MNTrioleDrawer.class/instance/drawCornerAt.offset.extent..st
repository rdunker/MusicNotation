drawing
drawCornerAt: aMNNoteMorph offset: aPoint extent: aExtent
	| offset |
	
	offset := aPoint.
	offset := offset + (self maxHeightOffset: aMNNoteMorph).
	self drawRectangleFrom: ((self calculateNotePosition: aMNNoteMorph) + offset) To: self verticalExtent.
	self startNote noteLayout up ifFalse: [offset := offset - self downOffset].
	self drawRectangleFrom: ((self calculateNotePosition: aMNNoteMorph) + offset) To: aExtent.