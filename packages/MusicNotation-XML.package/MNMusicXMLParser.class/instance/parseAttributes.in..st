parsing
parseAttributes: xmlAttributes in: aMeasure
	self parseDivisions: xmlAttributes.
	xmlAttributes elements do: [ :xmlElement |
		xmlElement tag == #key
			ifTrue: [ aMeasure key: (self parseKey: xmlElement) ].
		xmlElement tag == #time
			ifTrue: [ aMeasure time: (self parseTime: xmlElement) ].
		xmlElement tag == #clef
			ifTrue: [ aMeasure clef: (self parseClef: xmlElement) ] ].