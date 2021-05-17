accessing
calculateMidPointFrom: startPoint To: endPoint

	| heightOffset |
	heightOffset := 25.

	^ (((startPoint x + endPoint x)/2) @ (startPoint y + heightOffset)) rounded.