tests
testEmptyMeasure
	| measure |
	measure := MNMeasure new.

	self assert: measure notes isEmpty.