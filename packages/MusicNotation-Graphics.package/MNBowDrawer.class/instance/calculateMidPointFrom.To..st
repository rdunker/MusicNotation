calculating
calculateMidPointFrom: startPoint To: endPoint
	^ (((startPoint x + endPoint x)/2) @ (self calculateBowHeightFrom: startPoint To: endPoint)) rounded.