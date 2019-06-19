parsing
parseAttribute: xmlElement in: aMeasure
	xmlElement tag == #key
		ifTrue: [ aMeasure key: (self parseKey: xmlElement) ].
	
	xmlElement tag == #time
		ifTrue: [ aMeasure time: (self parseTime: xmlElement) ].
	
	xmlElement tag == #clef
		ifTrue: [ aMeasure clef: (self parseClef: xmlElement) ].