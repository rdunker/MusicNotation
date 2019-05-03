as yet unclassified
moveTo: aPoint
	"self lastStart = aPoint ifTrue: [ self finishShape ]."
	self lastPosition: aPoint.