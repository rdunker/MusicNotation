tests
testMeasureFifths
	| measure |
	measure := MNMeasure new.
	self assert: 0 equals: measure key asFifths.
	
	measure keyAccidentals: { $c -> 1 }.
	self assert: (measure key asFifths = 0) not.
	
	measure keyAccidentals: {}.
	self assert: 0 equals: measure key asFifths.
	
	-7 to: 7 do: [ :fifths |
		measure keyFifths: fifths.
		self assert: fifths equals: measure key asFifths ].
	
	measure clearKey.
	self assert: 0 equals: measure key asFifths.