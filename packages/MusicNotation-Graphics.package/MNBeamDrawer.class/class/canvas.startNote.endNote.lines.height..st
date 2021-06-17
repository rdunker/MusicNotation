as yet unclassified
canvas: aCanvas startNote: startMNNoteMorph endNote: endMNNoteMorph lines: anInteger height: aFloat
	^ self new
		canvas: aCanvas;
		startNote: startMNNoteMorph;
		endNote: endMNNoteMorph;
		drawLines: anInteger height: aFloat;
		yourself