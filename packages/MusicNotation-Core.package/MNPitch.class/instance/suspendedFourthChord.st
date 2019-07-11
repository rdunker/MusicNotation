chord creation
suspendedFourthChord
	^ Set newFrom: { self copy . MNInterval perfectFourth transpose: self . MNInterval perfectFifth transpose: self }