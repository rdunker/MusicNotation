tests
testCorrectClassPrefix
	self classes do: [:aClass | self assert: (aClass class name beginsWith: 'MN')].