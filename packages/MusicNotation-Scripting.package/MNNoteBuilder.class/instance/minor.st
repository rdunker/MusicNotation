arithmetic
minor
	| newPitches |
	newPitches := Set new.
	self pitches do: [ :pitch |
		newPitches addAll: (self createMinorChordFrom: pitch) ].
	^ self class context: self context pitches: (newPitches collect: #copy).