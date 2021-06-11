calculating
calculateDynamics

	| dynamic |
	
	dynamic := self note dynamics.
	dynamic isString ifTrue: [
	    dynamic = 'ppp'  ifTrue: [ ^ 16rE52A ].
		dynamic = 'pp'  ifTrue: [ ^ 16rE52B ].
	    dynamic = 'p'  ifTrue: [ ^ 16rE520 ].
		dynamic = 'mp'  ifTrue: [ ^ 16rE52C ].
		dynamic = 'mf'  ifTrue: [ ^ 16rE52D ].
		dynamic = 'sf'  ifTrue: [ ^ 16rE536 ].
	    dynamic = 'f' ifTrue: [ ^ 16rE522 ].
		dynamic = 'ff' ifTrue: [ ^ 16rE52F ].
		dynamic = 'fff' ifTrue: [ ^ 16rE530 ].
		dynamic = 'lionsRoar' ifTrue: [^ 16rE763].
		dynamic = 'pistol' ifTrue: [^ 16rE760].
		] ifFalse: [^ 16rE8E0]
	