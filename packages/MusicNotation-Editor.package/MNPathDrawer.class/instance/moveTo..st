parsing
moveTo: aPoint
	"self lastStart = aPoint ifTrue: [ self finishShape ]."
	self lastPosition: aPoint.
	self lastControlPoint: nil.