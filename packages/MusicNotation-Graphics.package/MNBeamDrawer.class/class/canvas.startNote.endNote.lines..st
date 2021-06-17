as yet unclassified
canvas: aCanvas startNote: startMNNoteMorph endNote: endMNNoteMorph lines: anInteger
	^ self new
		canvas: aCanvas;
		startNote: startMNNoteMorph;
		endNote: endMNNoteMorph;
		drawLines: anInteger;
		yourself