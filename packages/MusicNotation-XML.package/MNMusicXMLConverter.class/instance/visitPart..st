visiting
visitPart: aPart
	| xml |
	xml := XMLElement named: #part.
	xml attributeAt: #id put: (self partIdAt: aPart index).
	
	self addAll: aPart measures to: xml.
	
	^ xml