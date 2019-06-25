updating
updateProject
	self submorphsDo: #abandon.
	self project
		ifNotNilDo: [ :p | self addMorphBack: p asMorph ].