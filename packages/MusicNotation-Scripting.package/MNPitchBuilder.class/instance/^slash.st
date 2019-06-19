arithmetic
/ aNumber
	| note |
	note := MNNote new.
	note duration: 1 / aNumber.
	note addPitch: self createPitch.
	^ self context addNote: note