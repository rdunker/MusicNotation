calculating
accidentalsWidth: aMNNoteMorph
	| widthFactor |

	widthFactor := 0.04.
	^ (widthFactor * (aMNNoteMorph noteLayout widthUnitsOfAccidentalsForFont: MNFont bravura)).
