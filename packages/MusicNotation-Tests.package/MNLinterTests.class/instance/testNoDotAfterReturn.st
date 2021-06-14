tests
testNoDotAfterReturn
	"!!!TODO!!!"
	"| code failures |
	
	failures := self methodTestObjects select: [:aSLMethodTestObject |
		code := aSLMethodTestOugIn new hasDotAfterReturn: code) ~= false].
	self assert: failures isEmpty."