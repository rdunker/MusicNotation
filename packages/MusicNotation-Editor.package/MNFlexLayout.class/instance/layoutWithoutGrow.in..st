as yet unclassified
layoutWithoutGrow: aMorph in: newBounds
	| box width |
	box := newBounds withWidth: 0.
	aMorph submorphsDo: [ :each | 
		width := each flexBase.
		each bounds: (box withWidth: width).
		box := box translateBy: width @ 0 ].