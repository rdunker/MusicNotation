calculating
calculateNotehead
	| dur |
	dur := self note baseDuration.
	^ dur isInteger
		ifTrue: [ dur == 2
			ifTrue: [ 16rE0A0 ]		"double whole note"
			ifFalse: [ 16rE0A2 ]]	"whole note"
		ifFalse: [ dur denominator = 2
			ifTrue: [ 16rE0A3 ] 		"half note" 
			ifFalse: [ 16rE0A4 ]]	"everything else"