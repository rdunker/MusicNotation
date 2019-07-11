chord creation
suspendedSecondChord
	^ Set newFrom: { self copy . MNInterval majorSecond transpose: self . MNInterval perfectFifth transpose: self }