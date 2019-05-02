as yet unclassified
moveTo: aPoint
	self lastStart = aPoint ifTrue: [ self finish ].
	self position: aPoint.