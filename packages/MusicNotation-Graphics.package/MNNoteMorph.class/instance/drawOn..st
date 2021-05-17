accessing
drawOn: aCanvas
	| drawer endNote |
	
	super drawOn: aCanvas.
		
	drawer := MNMultiObjectDrawer canvas: self projectCanvas.
	
	self note tieStart ifTrue: [
		endNote := self note findNextTieStop.
		endNote ifNotNil: [
			drawer drawTieFrom: self Till: endNote morph.
		]
	].
