chord creation
diminishedChord
	^ Set newFrom: { self copy . MNInterval minorThird transpose: self . MNInterval diminishedFifth transpose: self }