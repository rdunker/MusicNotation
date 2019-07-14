accessing
accidentalCodePointOf: anInteger
	^ 16rE261 + (anInteger == -2
		ifTrue: [ 3 ]
		ifFalse: [ anInteger ])