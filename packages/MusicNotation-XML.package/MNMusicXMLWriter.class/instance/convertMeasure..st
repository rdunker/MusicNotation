converting
convertMeasure: aMeasure
	| xml |
	xml := XMLElement named: #measure.
	
	self updateDivisions: aMeasure.
	xml addElement: (self createAttributesFor: aMeasure).
	
	aMeasure notes do: [ :note | xml addElement: (self convertNote: note) ].
	
	^ xml.