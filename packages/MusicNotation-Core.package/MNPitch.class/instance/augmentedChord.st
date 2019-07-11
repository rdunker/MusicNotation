chord creation
augmentedChord
	^ Set newFrom: { self copy . MNInterval majorThird transpose: self . MNInterval augmentedFifth transpose: self }