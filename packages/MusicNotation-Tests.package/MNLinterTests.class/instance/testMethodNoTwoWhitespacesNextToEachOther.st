tests
testMethodNoTwoWhitespacesNextToEachOther
	self methodsLinesDo: [:lines |
		(lines select: [:aLine | (aLine includesSubstring: String space, String space)]) isEmpty].