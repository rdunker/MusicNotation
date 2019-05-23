serializing
serializeNote: aNote withDivisions: aNumber

	| xml |
	xml := XMLElement named: 'note'.
	
	aNote pitches do: [ :pitch | xml addElement: (self serializePitch: pitch) ].
	
	aNote pitches isEmpty ifTrue: [ xml addElement: (XMLElement named: 'rest') ].
	
	xml addElement: (self stringNamed: 'duration' content: ((self durationOf: aNote withDivisions: aNumber) asString)).
		
	xml addElement: (self stringNamed: 'type' content: (aNote type)).
			
	aNote isDotted ifTrue: [ xml addElement: (XMLElement named: 'dot') ].
	
	^ xml.