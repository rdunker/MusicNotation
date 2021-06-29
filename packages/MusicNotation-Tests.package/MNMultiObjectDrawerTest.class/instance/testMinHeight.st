testing
testMinHeight
	| c4 f4 d5 notes |

	c4 := self createC4.
	f4 := self createF4.
	d5 := self createD5.
	notes := OrderedCollection new add: c4; add: f4; add: d5; yourself.
	self drawer: (MNBeamDrawer canvas: self hiddenCanvas notes: notes).
	
	self assert: (self drawer minHeight = c4 noteLayout noteHeight)