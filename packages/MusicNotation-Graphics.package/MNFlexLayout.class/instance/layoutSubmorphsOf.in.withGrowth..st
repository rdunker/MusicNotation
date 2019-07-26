layout
layoutSubmorphsOf: aMorph in: newBounds withGrowth: aGrowth
	| width bounds |
	bounds := newBounds withWidth: 0.
	aMorph submorphsDo: [ :each | 
		width := aGrowth * each flexGrow + each flexBase.
		each bounds: (bounds withWidth: width).
		bounds := bounds translateBy: width @ 0 ].