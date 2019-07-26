accessing
hasDenseLines
	self lines overlappingPairsDo: [ :a :b |
		(a - b) abs < 1 ifTrue: [ ^ true ]].
	^ false