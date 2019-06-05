as yet unclassified
layout: aMorph in: newBounds
	| base grow width bounds |
	bounds := newBounds insetBy: aMorph flexInset.
	
	base := aMorph submorphs detectSum: #flexBase.
	width := bounds width - base.
	width strictlyPositive
		ifFalse: [ ^ self layoutWithoutGrow: aMorph in: bounds ].
	
	grow := aMorph submorphs detectSum: #flexGrow.
	grow isZero
		ifTrue: [ ^ self layoutWithoutGrow: aMorph in: bounds ].
	grow := width / grow.
	
	bounds := bounds withWidth: 0.
	aMorph submorphsDo: [ :each | 
		width := grow * each flexGrow + each flexBase.
		each bounds: (bounds withWidth: width).
		bounds := bounds translateBy: width @ 0 ].