accessing
createNote: aNumber
	^ MNNote new
		duration: aNumber;
		pitches: (self pitches collect: #copy);
		yourself