accessing
calculateBowHeightFrom: startPoint To: endPoint

	| heightOffset bowHeight|
	
	self bowDownwards ifTrue: [ 
		bowHeight := (startPoint y) max: (endPoint y).
		heightOffset := 25.
		] ifFalse: [ 
		bowHeight := (startPoint y) min: (endPoint y).
		heightOffset := -25.
		].

	^ (bowHeight + heightOffset)