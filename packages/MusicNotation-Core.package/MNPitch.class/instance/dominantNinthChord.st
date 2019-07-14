chord creation
dominantNinthChord
	^ self dominantSeventhChord add: (MNInterval majorNinth transpose: self);
		yourself