accessing
methodTestObjects
	^ ((self classTestObjects collect: [:aClassTestObject | aClassTestObject methods]) flatten) select: [:aMethod | ((aMethod sourceCode string) includesSubstring: self ignoreString) not].