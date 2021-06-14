tests
testMethodHasEmptyLine
	"also rejects method with tabs or spaces in second line"
	self methodsLinesDo: [:lines | lines size < 2 or: [(self isLineWithOnlyTabsAndSpaces: lines second) not]].