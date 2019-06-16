converting
addAll: aCollection to: xml
	aCollection do: [ :each |
		xml addElement: (each accept: self) ].