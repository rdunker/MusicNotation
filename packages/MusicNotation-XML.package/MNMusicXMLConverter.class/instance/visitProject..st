visiting
visitProject: aProject
	| xml |
	xml := XMLElement named: #'score-partwise'.
	xml attributeAt: #version put: '3.1'.
	xml addElement: (self createPartList: aProject).
	
	self addAll: aProject parts to: xml.
	
	^ xml