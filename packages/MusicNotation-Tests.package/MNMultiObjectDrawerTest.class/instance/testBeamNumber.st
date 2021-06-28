testing
testBeamNumber
	| c1 c16 c2 c32 c4 c8 notes |
	c1 := self createC4: 1/1.
	c2 := self createC4: 1/2.
	c4 := self createC4: 1/4.
	c8 := self createC4: 1/8.
	c16 := self createC4: 1/16.
	c32 := self createC4: 1/32.
	
	notes := OrderedCollection new add: c1; yourself.
	
	self drawer: (MNBeamDrawer canvas: self hiddenCanvas notes: notes).
	self assert: [self drawer beamNumber = -2].
	notes add: c2.
	self assert: [self drawer beamNumber = -1].
	notes add: c4.
	self assert: [self drawer beamNumber = 0].
	notes add: c8.
	self assert: [self drawer beamNumber = 1].
	notes add: c16.
	self assert: [self drawer beamNumber = 2].
	notes add: c32.
	self assert: [self drawer beamNumber = 3].
	