updating
updateMeasures
	self submorphs do: #abandon.
	self part ifNil: [ ^ self ].
	
	self part measures do: [ :measure |
		self addMorphBack: measure asMorph ].	