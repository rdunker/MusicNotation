layout
layout: aMorph in: newBounds
	| base grow width bounds |
	bounds := newBounds insetBy: aMorph flexInset.
	
	base := aMorph submorphs detectSum: #flexBase.
	width := bounds width - base.
	
	grow := aMorph submorphs detectSum: #flexGrow.
	width strictlyPositive ifFalse: [ grow := 0 ].
	grow isZero ifFalse: [ grow := width / grow ].
	
	self layoutSubmorphsOf: aMorph in: bounds withGrowth: grow