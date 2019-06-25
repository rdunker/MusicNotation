accessing
hasDenseLines
	"Are there any dense pitches (one half step apart = 0.5 lines apart)"
	self lines overlappingPairsDo: [ :a :b |
		(a - b) abs < 1 ifTrue: [ ^ true ]].
	^ false