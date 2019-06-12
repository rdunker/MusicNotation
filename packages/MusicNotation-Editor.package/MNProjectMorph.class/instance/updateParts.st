updating
updateParts
	self submorphs do: #abandon.
	self project ifNil: [ ^ self ].
	
	self project parts do: [ :part |
		self addMorphBack: part asMorph ].