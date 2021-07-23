updating
checkForEdgeCases: aCollection
	(self shouldIgnoreNote: aCollection) ifTrue: [self ignoreNote: aCollection first].
	(self shouldSplitBeam: aCollection) ifTrue: [self splitBeam].
	self update.