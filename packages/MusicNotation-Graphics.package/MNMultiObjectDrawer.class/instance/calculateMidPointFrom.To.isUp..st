accessing
calculateMidPointFrom: startPoint To: endPoint isUp: aBoolean

	| heightOffset |
	aBoolean ifTrue: [heightOffset := 25] ifFalse: [	heightOffset := -25].

	^ (((startPoint x + endPoint x)/2) @ (startPoint y + heightOffset)) rounded.