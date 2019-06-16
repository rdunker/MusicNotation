visiting
visitMeasure: aMeasure
	^ self
		visitKey: aMeasure key;
		visitClef: aMeasure clef;
		visitObjectWithChildren: aMeasure