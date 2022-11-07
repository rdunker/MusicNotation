drawing
drawRightCorner
	| offset extent |
	
	extent := (-1*(self horizontalExtent x)+1)@self horizontalExtent y.
	offset := self upNotePadding + (self noteHeadWidth@0). 
	self startNote noteLayout up ifFalse: [offset := self downNotePadding + (self noteHeadWidth@0)].
	self drawCornerAt: self endNote offset: offset extent: extent.