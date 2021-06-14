tests
testMethodNameIsLowerCase
	self methodsLinesDo: [:lines | lines first first isLowercase or: ['<>=*/+-' includes: lines first first]].