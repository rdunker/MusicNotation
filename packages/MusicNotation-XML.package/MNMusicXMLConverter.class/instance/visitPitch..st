visiting
visitPitch: aPitch
	| xml |
	xml := XMLElement named: #pitch.
	
	xml addElement: (self stringNamed: #step content: aPitch step asUppercase).
	
	aPitch isNormal
		ifFalse: [ xml addElement: (self stringNamed: #alter content: aPitch alter) ].
		
	xml addElement: (self stringNamed: #octave content: aPitch octave).
	
	^ xml