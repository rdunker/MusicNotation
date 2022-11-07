scripting
triole
	| firstNote secondNote triole |
	secondNote := self lastNote lastNote.
	firstNote := secondNote lastNote.	
	triole := OrderedCollection new add: firstNote; add: secondNote; add: self lastNote; yourself.
	triole do: [:note | note setTriole: triole].