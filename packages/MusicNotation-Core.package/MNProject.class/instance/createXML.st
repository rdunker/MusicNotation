xml creating
createXML

	| doc score list |
	doc := XMLDocument new.
	doc version: '1.0';
		encoding: 'UTF-8'.
	
	score := (XMLElement named: 'score-partwise')
		attributeAt: #version put: '3.1'.
	doc addElement: score.
			
	list := XMLElement named: 'part-list'.
	score addElement: list.
			
	self parts do:
		[ :part |
			list addElement: part createXMLScore.			
			score addElement: part createXML ].
	
	^ doc

