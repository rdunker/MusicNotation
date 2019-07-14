chord creation
majorChord
	^ Set newFrom: { self copy . MNInterval majorThird transpose: self . MNInterval perfectFifth transpose: self }