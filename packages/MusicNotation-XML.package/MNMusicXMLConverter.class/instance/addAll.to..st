converting
addAll: aCollection to: anXMLElement
	aCollection do: [ :each |
		anXMLElement addElement: (each accept: self) ].