updating
addSymbolsToFirstMeasure: aMorph
	aMorph addMorphFront: (MNTimeSignatureMorph numerator: 4 denominator: 4).
	aMorph addMorphFront: MNClefMorph newGClef.