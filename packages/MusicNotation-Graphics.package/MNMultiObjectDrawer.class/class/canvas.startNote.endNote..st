class initialization
canvas: aCanvas startNote: startMNNoteMorph endNote: endMNNoteMorph
	^ self new
		canvas: aCanvas;
		startNote: startMNNoteMorph;
		endNote: endMNNoteMorph;
		draw;
		yourself