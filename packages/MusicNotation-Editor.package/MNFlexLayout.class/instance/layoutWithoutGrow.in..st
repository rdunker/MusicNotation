as yet unclassified
layoutWithoutGrow: aMorph in: newBounds
	| width bounds |
	bounds := newBounds withWidth: 0.
	aMorph submorphsDo: [ :each | 
		width := each flexBase.
		each bounds: (bounds withWidth: width).
		bounds := bounds translateBy: width @ 0 ].