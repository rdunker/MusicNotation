parsing
parseManualKey: xmlKey
	| key step |
	key := MNCustomKey new.
	
	step := nil.
	xmlKey elements do: [ :xmlElement |
		xmlElement tag = #'key-step'
			ifTrue: [ step := xmlElement contentString ].
		xmlElement tag = #'key-alter'
			ifTrue: [ key addAccidental: step alter: xmlElement contentString ]].
	
	^ key