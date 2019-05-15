adding
addNote: aNote
	aNote pitches
		ifEmpty: [ ^ self addRest: aNote duration ].
	aNote pitches size = 1
		ifTrue: [ ^ self addPitch: aNote pitches first duration: aNote duration ].
	^ self addPitches: aNote pitches duration: aNote duration