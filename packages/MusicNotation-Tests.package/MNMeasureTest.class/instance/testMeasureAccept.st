tests
testMeasureAccept
	| measure |
	measure := MNMeasure new.
	self assert: (MNTestCallRecorder new
		do: [ :v | measure accept: v ];
		isSingleCallTo: #visitMeasure: with: measure).