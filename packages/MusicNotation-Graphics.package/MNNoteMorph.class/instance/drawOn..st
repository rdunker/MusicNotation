accessing
drawOn: aCanvas
	| endNote |
	
	super drawOn: aCanvas.
	self partMorph changed.
	
	self note tieStart ifTrue: [
		endNote := self findNextTieStop.
		endNote ifNotNil: [
			MNBowDrawer canvas: self partCanvas startNote: self endNote: endNote.
		]
	].

	self note slurStart ifTrue: [
		endNote := self findNextSlurStop.
		endNote ifNotNil: [
			MNBowDrawer canvas: self partCanvas startNote: self endNote: endNote.
		]
	].

	self note beamStart ifTrue: [
		endNote := self findNextBeamStop.
		endNote ifNotNil: [
				MNBeamDrawer canvas: self partCanvas startNote: self endNote: endNote.
			]
		]
