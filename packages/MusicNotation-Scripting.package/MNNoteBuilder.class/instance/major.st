arithmetic
major
	| newPitches |
	newPitches := Set new.
	self pitches do: [ :pitch | newPitches addAll: pitch majorChord ].
	^ self class context: self context pitches: (newPitches collect: #copy)