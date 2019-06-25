converting
emptyDurationInMeasure: aMeasure
	| sum |
	sum := aMeasure notes detectSum: #duration.
	^ (aMeasure time - sum) max: 0