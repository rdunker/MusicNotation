calculating
calculateDots
	^ self lines
		ifEmpty: [ #(-0.5) ]
		ifNotEmpty: [ self calculateNoteDots ].