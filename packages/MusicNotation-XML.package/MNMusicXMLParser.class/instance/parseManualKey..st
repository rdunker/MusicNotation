parsing
parseManualKey: xmlKey
	| key currentSymbol |
	key := MNManualKey new.
	
	xmlKey elements do: [ :xmlElement |
		xmlElement tag = #'key-step' ifTrue: [
			currentSymbol := MNKeySymbol new step: (xmlElement contentString asLowercase) ].
		xmlElement tag = #'key-alter' ifTrue: [
			currentSymbol alter: (xmlElement contentString asInteger).
			key symbols addLast: currentSymbol ] ].
	
	^ key