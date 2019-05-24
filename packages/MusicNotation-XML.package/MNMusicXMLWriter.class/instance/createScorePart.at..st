converting
createScorePart: aPart at: index
	| xml |
	xml := XMLElement named: #'score-part'.
	xml attributeAt: #id put: (self partIdAt: index).
	xml addElement: (self stringNamed: #'part-name' content: 'Part ', index).
	^ xml