converting
convertPart: aPart
	| xml |
	xml := XMLElement named: #part.
	
	aPart measures keysAndValuesDo: [ :index :measure |
		xml addElement: (self convertMeasure: measure at: index) ].
	
	^ xml