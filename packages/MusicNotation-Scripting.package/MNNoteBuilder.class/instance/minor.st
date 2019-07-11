arithmetic
minor
	| newPitches |
	newPitches := Set new.
	self pitches do: [ :pitch | newPitches addAll: pitch minorChord ].
	^ self class context: self context pitches: (newPitches collect: #copy).