accessing
accidentalsWidth: aMNNoteMorph
	| widthFactor |

	widthFactor := 0.3.

	^ widthFactor * aMNNoteMorph noteLayout accidentals size * MNFont bravura accidentalSpaceUnits
