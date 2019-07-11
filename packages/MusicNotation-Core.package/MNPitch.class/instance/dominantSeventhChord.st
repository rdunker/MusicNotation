chord creation
dominantSeventhChord
	^ self majorChord add: (MNInterval minorSeventh transpose: self);
		yourself