xml creating
createXML

	| doc score list |
	doc := XMLDocument new.
	doc version: '1.0';
		encoding: 'UTF-8'.
	
	score := XMLElement
		named: 'score-partwise'
		attributes: (Dictionary new
			at: #version put: '3.1';
			yourself).
	doc addElement: score.
			
	list := XMLElement named: 'part-list'.
	score addElement: list.
			
	self parts do:
		[ :part |
			| scorepart |
			scorepart := XMLElement
				named: 'score-part'
				attributes: (Dictionary new
					at: #id put: part id;
					yourself).
			list addElement: scorepart.
			
			scorepart addElement: ((XMLElement named: 'part-name')
				addContent: (XMLStringNode string: part name);
				yourself).
			
			score addElement: part createXML ].
	
	^ doc

