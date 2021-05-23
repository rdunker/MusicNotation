accessing
drawOn: aCanvas
	| drawer endNote |
	
	super drawOn: aCanvas.
		
	drawer := MNMultiObjectDrawer canvas: self projectCanvas.
	
	self note tieStart ifTrue: [
		endNote := self findNextTieStop.
		endNote ifNotNil: [
			drawer drawSlurFrom: self Till: endNote.
		]
	].

	self note slurStart ifTrue: [
		endNote := self findNextSlurStop.
		endNote ifNotNil: [
			drawer drawSlurFrom: self Till: endNote.
		]
	].
