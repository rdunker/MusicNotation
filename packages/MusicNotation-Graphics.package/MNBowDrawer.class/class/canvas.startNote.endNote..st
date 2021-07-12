class initialization
canvas: aCanvas startNote: startMNNoteMorph endNote: endMNNoteMorph
	^ self canvas: aCanvas notes: (OrderedCollection new add: startMNNoteMorph; add: endMNNoteMorph; yourself)