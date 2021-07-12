drawing
drawRightCorner
	| offset extent |
	
	extent := (-1*(self horizontalExtent x)+1)@self horizontalExtent y.
	offset := self noteHeadWith@self notePadding. 
	self startNote noteLayout up ifFalse: [offset := offset + (self noteHeadWith/2@20)].
	self drawCornerAt: self endNote offset: offset extent: extent.