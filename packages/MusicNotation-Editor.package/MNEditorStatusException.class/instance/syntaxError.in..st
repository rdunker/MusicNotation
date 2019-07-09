accessing
syntaxError: anError in: anEditor
	self message: 'SyntaxError: ', anError errorMessage.
	self range: (anError location to: SmallInteger maxVal).