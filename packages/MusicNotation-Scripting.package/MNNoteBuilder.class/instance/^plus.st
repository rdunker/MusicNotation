arithmetic
+ aNoteBuilder
	| pitches |
	pitches := self pitches copy.
	pitches addAll: aNoteBuilder pitches.
	^ MNNoteBuilder context: self context pitches: pitches