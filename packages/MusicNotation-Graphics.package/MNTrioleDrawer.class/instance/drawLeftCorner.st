drawing
drawLeftCorner
	| offset |
	
	offset := self upNotePadding - (self halfNoteHeadWidth@0).
	self startNote noteLayout up ifFalse: [offset := self downNotePadding].
	self drawCornerAt: self startNote offset: offset extent: self horizontalExtent.