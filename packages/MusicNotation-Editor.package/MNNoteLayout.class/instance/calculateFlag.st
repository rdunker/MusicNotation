calculating
calculateFlag
	| offset |
	offset := self note baseDuration denominator highBit - 4 * 2.
	offset positive ifFalse: [ ^ nil ].
	self ifDown: [ offset := offset + 1 ].
	^ 16rE240 + offset