auxiliary
configurePreludeMeasureWithTime: aFraction
	| noteNumerator noteDenominator |
	noteNumerator := self lastNote duration numerator.
	noteDenominator := self lastNote duration denominator.
	self measure timeNumerator: noteNumerator denominator: noteDenominator.
	self measure isPrelude: true.
	self measure prevNumerator: aFraction numerator.
	self measure prevDenominator: aFraction denominator.