accessing
accidentalsHeight: aMNNoteMorph

|size|
size := 0.

aMNNoteMorph noteLayout accidentals size >= 2 ifTrue: [ size = 1 ].
	
	^ 0.2 * size * MNFont bravura accidentalSpaceUnits

