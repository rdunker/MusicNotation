accessing
mirroredControlPoint
	^ self lastControlPoint 
		ifNil: [ self lastPosition ]
		ifNotNil: [ 2 * self lastPosition - self lastControlPoint ]