visiting
emptyDurationInMeasure: aMeasure
	| sum |
	sum := aMeasure notes detectSum: [ :each | each duration ].
	^ (aMeasure time - sum) max: 0