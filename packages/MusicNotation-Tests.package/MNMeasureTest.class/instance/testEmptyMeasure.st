as yet unclassified
testEmptyMeasure

	| measure |
	measure := MNMeasure new.

	self assert: measure notes isEmpty.