accessing
durationWithTies
	self tieStart ifFalse: [ ^ self duration ].
	self nextNote
		ifNil: [ ^ self duration ]
		ifNotNilDo: [ :note | ^ self duration + note durationWithTies ].