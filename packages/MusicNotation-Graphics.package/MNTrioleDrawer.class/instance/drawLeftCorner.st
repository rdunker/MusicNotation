drawing
drawLeftCorner
	| offset extent |
	
	extent := self horizontalExtent.
	offset := -5@self notePadding.
	self startNote noteLayout up ifFalse: [offset := offset + (self noteHeadWith/2@20)].
	self drawCornerAt: self startNote offset: offset extent: extent.