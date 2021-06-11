private
methodsLinesDo: aBlock
	| result |
	
	result := OrderedCollection new.
	self methodTestObjects do: [:aSLMethodTestObject |
		(aBlock value: aSLMethodTestObject sourceCode string lines) ifFalse: [result add: aSLMethodTestObject name]].
	self assert: result isEmpty.