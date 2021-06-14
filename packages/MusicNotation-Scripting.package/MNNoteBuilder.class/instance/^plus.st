arithmetic
+ aNoteBuilder
	| notePitches |
	self context = aNoteBuilder context
		ifFalse: [ MNInvalidValue for: aNoteBuilder at: #context description: 'contexts must be equal' ].
	notePitches := self pitches copy.
	notePitches addAll: aNoteBuilder pitches.
	^ self class context: self context pitches: notePitches