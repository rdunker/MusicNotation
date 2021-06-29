beams & bows
drawBowTo: aNote
	aNote ifNotNil: [
		MNBowDrawer canvas: self partCanvas startNote: self endNote: aNote].
