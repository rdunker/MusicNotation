tests
createNoteWithDuration: aFraction step: aSymbol octave: aNumber
	| pitch note noteMorph |

	pitch := MNPitch new
		octave: aNumber;
		step: aSymbol;
		yourself.

	note := MNNote new
		duration: aFraction;
		addPitch: pitch;
		yourself.

	noteMorph := MNNoteMorph note: note.
	noteMorph noteLayout update.

	^ noteMorph