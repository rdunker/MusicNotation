accessing
drawOn: aCanvas
	| endNote |
	
	super drawOn: aCanvas.
	
	self note tieStart ifTrue: [
		endNote := self findNextTieStop.
		endNote ifNotNil: [
			MNBowDrawer canvas: self projectCanvas startNote: self endNote: endNote.
		]
	].

	self note slurStart ifTrue: [
		endNote := self findNextSlurStop.
		endNote ifNotNil: [
			MNBowDrawer canvas: self projectCanvas startNote: self endNote: endNote.
		]
	].
