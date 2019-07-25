converting
emptyDurationInMeasure: aMeasure
	^ (aMeasure time - aMeasure noteDuration) max: 0