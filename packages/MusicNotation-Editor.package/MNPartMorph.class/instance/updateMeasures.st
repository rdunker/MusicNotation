updating
updateMeasures
	self submorphs do: #abandon.
	self part ifNil: [ ^ self ].
	
	self part measures do: [ :measure |
		self addMorphBack: measure asMorph ].
	
	self addSymbolsToFirstMeasure: self submorphs first.
	self addSymbolsToLastMeasure: self submorphs last.