converting
createScorePartAt: anIndex
	| xml |
	xml := XMLElement named: #'score-part'.
	xml attributeAt: #id put: (self partIdAt: anIndex).
	
	xml addElement: (self stringNamed: #'part-name' content: 'Part ', anIndex).
	
	^ xml