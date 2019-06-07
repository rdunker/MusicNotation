parsing
parseAttributes: xmlAttributes in: aMeasure
	self parseAttributes: xmlAttributes.
	xmlAttributes elements do: [ :xmlElement |
		xmlElement tag == #key
			ifTrue: [ aMeasure key: (self parseKey: xmlElement) ] ].
	self flag: #todo. "Parse beat, etc. once it is available in the core"