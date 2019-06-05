as yet unclassified
layout: aMorph in: newBounds
	| base grow box width |
	base := aMorph submorphs detectSum: #flexBase.
	newBounds width <= base
		ifTrue: [ ^ self layoutWithoutGrow: aMorph in: newBounds ].
	
	grow := aMorph submorphs detectSum: #flexGrow.
	grow := newBounds width - base / grow.
	
	box := newBounds withWidth: 0.
	aMorph submorphsDo: [ :each | 
		width := grow * each flexGrow + each flexBase.
		each bounds: (box withWidth: width).
		box := box translateBy: width @ 0 ].