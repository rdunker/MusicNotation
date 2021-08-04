testing
testCheckForEdgeCases
	| cUp cDown notes |
	"Ignore while linting"

	cUp := self createC4.
	cDown := cUp copy.
	cDown noteLayout up: false; yourself.
	
	notes := OrderedCollection new add: cUp; add: cUp copy; add: cUp copy; yourself.
	self drawer: (MNBeamDrawer canvas: self hiddenCanvas notes: notes).
	self drawer checkForEdgeCases.
	self assert: self drawer notes size = 3.
	
	notes := OrderedCollection new add: cUp; add: cDown; add: cUp copy; yourself.
	self drawer notes: notes.
	self drawer checkForEdgeCases.
	self assert: self drawer notes size = 2.
	
	notes := OrderedCollection new add: cUp; add: cDown; add: cUp copy; add: cDown copy; yourself.
	self drawer notes: notes.
	self drawer checkForEdgeCases.
	self assert: self drawer notes size = 2.
	
	notes := OrderedCollection new add: cUp; add: cDown; yourself.
	self drawer notes: notes.
	self drawer checkForEdgeCases.
	self assert: self drawer notes size = 2.