arithmetic
major
	| newPitches |
	newPitches := Set new.
	self pitches do: [ :pitch |
		newPitches addAll: (self createMajorChordFrom: pitch) ].
	^ self class context: self context pitches: (newPitches collect: #copy)