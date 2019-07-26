tests
testMeasureFifths
	| measure |
	measure := MNMeasure new.
	self assert: 0 equals: measure key asFifths.
	
	measure keyCustom: { $c -> 1 }.
	self deny: (measure key asFifths = 0).
	
	measure keyCustom: {}.
	self assert: 0 equals: measure key asFifths.
	
	-7 to: 7 do: [ :fifths |
		measure keyFifths: fifths.
		self assert: fifths equals: measure key asFifths ].
	
	measure clearKey.
	self assert: 0 equals: measure key asFifths.