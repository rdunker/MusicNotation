serializing
serializePitch: aPitch

	| xml |
	xml := XMLElement named: 'pitch'.
	
	xml addElement: (self stringNamed: 'step' content: (aPitch step asString asUppercase)).
		
	aPitch isNormal ifFalse:
		[ xml addElement: (self stringNamed: 'alter' content: (aPitch alter asString)) ].
		
	xml addElement: (self stringNamed: 'octave' content: (aPitch octave asString)).
	
	^ xml