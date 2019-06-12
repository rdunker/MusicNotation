calculating
calculateDots
	^ self
		ifRest: [ #(-0.5) ]
		ifNote: [ self calculateNoteDots ].