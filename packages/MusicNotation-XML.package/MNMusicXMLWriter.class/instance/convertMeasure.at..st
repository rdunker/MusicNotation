converting
convertMeasure: aMeasure at: index
	| xml |
	xml := self convertMeasure: aMeasure.
	xml attributeAt: #number put: index asString.
	^ xml