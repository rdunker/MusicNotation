visiting
visitMeasure: aMeasure
	| xml |
	xml := XMLElement named: #measure.
	xml attributeAt: #number put: aMeasure index asString.
	
	self divisions: (self divisionsOf: aMeasure).
	xml addElement: (self createAttributesFor: aMeasure).
	
	self addAll: aMeasure notes to: xml.
	
	^ xml.