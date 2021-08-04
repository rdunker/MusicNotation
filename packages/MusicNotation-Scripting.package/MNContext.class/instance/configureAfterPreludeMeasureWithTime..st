auxiliary
configureAfterPreludeMeasureWithTime: aFraction
	self part addMeasure: self measure copyEmpty.
	self measure isPrelude: false.
	self measure isAfterPrelude: true.
	self measure timeNumerator: aFraction numerator denominator: aFraction denominator.