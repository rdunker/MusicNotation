accessing
createNote: aNumber
	^ MNNote new
		duration: aNumber;
		pitches: self copyPitches;
		validateDuration;
		yourself