arithmetic
+ aNoteBuilder
	| pitches |
	self context = aNoteBuilder context
		ifFalse: [MNInvalidValue for: aNoteBuilder at: #context description: 'contexts must be equal'].
	pitches := self pitches copy.
	pitches addAll: aNoteBuilder pitches.
	^ self class context: self context pitches: pitches