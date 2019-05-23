adding
addSound: aSound
	self soundSequence ifNil: [ ^ self soundSequence: aSound ].
	(self soundSequence isKindOf: SequentialSound)
		ifFalse: [ | sound |
			sound := self soundSequence.
			self soundSequence: SequentialSound new.
			self soundSequence add: sound ].
	self soundSequence add: aSound.