as yet unclassified
buildMeasureWith: aBuilder at: position
	| size |
	size := 5@3.
	^ MNPluggableCustomSpec new
		morphClass: MNMeasureMorph;
		frame: (position * size extent: size);
		color: Color red;
		lineWidth: 3;
		yourself