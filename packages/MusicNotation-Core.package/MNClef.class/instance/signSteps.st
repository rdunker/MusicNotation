accessing
signSteps
	| index |
	index := #gfc indexOf: self sign.
	index isZero
		ifTrue: [ MNInvalidValue for: self at: #sign description: 'supported signs are $g $f $c' ].
	^ #(38 30 34) at: index