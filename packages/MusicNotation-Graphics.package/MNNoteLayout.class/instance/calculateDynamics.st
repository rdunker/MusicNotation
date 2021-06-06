calculating
calculateDynamics
	| dynamic|
	
	dynamic := self note dynamics.
	^ dynamic isString ifTrue: [ (dynamic size) < ('aaa' size) ifTrue: [ (dynamic size) < ('aa' size) ifTrue: [(self isP: dynamic) ifTrue: [ 16rE520 ] ifFalse: [(self isF: dynamic) ifTrue: [16rE522]]] ifFalse: [16rE521] ] ifFalse: [16rE523] ] ifFalse: [ 16rE8E0 ]