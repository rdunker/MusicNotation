tests
testMethodNotTooManyEmptyLines
	self methodsLinesDo: [:lines |
		((1 to: lines size -1) select: [:index |
			((self isLineWithOnlyTabsAndSpaces: (lines at: index))
				and: [self isLineWithOnlyTabsAndSpaces: (lines at: index + 1)])]) isEmpty].