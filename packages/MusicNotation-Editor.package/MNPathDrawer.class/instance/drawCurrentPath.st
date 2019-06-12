drawing
drawCurrentPath
	[ self path atEnd ]
		whileFalse: [ self readNextSegment ].
	self finishShape.