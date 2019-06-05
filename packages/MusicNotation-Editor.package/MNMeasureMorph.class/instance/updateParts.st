updating
updateParts
	self submorphs do: #abandon.
	self measure ifNil: [ ^ self ].
	
	self measure notes do: [ :note |
		self addMorphBack: note asMorph ].