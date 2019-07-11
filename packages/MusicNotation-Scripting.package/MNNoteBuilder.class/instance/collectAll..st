accessing
collectAll: aBlock
	| newPitches |
	newPitches := Set new.
	self pitches do: [ :pitch | newPitches addAll: (aBlock value: pitch) ].
	^ self class context: self context pitches: (newPitches collect: #copy)