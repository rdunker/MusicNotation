as yet unclassified
drawCurrentPath
	[ self path atEnd ]
		whileFalse: [ self readNextSegment ].
	self finishShape.