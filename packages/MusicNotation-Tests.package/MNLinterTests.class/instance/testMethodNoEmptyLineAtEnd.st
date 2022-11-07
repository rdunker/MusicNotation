tests
testMethodNoEmptyLineAtEnd
	self methodsLinesDo: [:lines | (self isLineWithOnlyTabsAndSpaces: lines last) not].