converting
convertPart: aPart at: index
	| xml |
	xml := self convertPart: aPart.
	xml attributeAt: #id put: (self partIdAt: index).
	^ xml