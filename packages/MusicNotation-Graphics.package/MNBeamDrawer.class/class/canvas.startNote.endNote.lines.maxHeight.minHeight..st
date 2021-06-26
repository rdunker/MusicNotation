as yet unclassified
canvas: aCanvas startNote: startMNNoteMorph endNote: endMNNoteMorph lines: anInteger maxHeight: maxFloat minHeight: minFloat
	^ self new
		canvas: aCanvas;
		startNote: startMNNoteMorph;
		endNote: endMNNoteMorph;
		drawLines: anInteger maxHeight: maxFloat minHeight: minFloat;
		yourself