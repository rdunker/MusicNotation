serializing
serializeProject: aProject

	| doc score list index |
	doc := XMLDocument new.
	doc version: '1.0';
		encoding: 'UTF-8'.
	
	score := (XMLElement named: 'score-partwise')
		attributeAt: 'version' put: '3.1'.
	doc addElement: score.
			
	list := XMLElement named: 'part-list'.
	score addElement: list.
	
	index := 1.			
	aProject parts do:
		[ :part |
			list addElement: (self serializePartScore: part withID: index).			
			score addElement: (self serializePart: part withID: index).			
			index := index + 1 ].
	
	^ doc