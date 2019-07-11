accessing
minorChord
	^ Set newFrom: { self copy . MNInterval minorThird transpose: self . MNInterval perfectFifth transpose: self }