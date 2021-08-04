testing
testRemoveFlags
	self setupBasicBeamDrawer.
	self drawer removeFlags.
	self assert: (self drawer notes select: [:note | note noteLayout drawFlag]) isEmpty.