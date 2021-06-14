calculating
calculateDynamics
	| dynamic |
	
	dynamic := self note dynamics.
	dynamic isString ifTrue: [
		dynamic = 'ppp' ifTrue: [^ 58666].
		dynamic = 'pp' ifTrue: [^ 58667].
		dynamic = 'p' ifTrue: [^ 58656].
		dynamic = 'mp' ifTrue: [^ 58668].
		dynamic = 'mf' ifTrue: [^ 58669].
		dynamic = 'sf' ifTrue: [^ 58678].
		dynamic = 'f' ifTrue: [^ 58658].
		dynamic = 'ff' ifTrue: [^ 58671].
		dynamic = 'fff' ifTrue: [^ 58672].
		dynamic = 'lionsRoar' ifTrue: [^ 59235].
		dynamic = 'pistol' ifTrue: [^ 59232]]
		ifFalse: [^ 59616]