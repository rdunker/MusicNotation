accessing
triole
	| firstNote secondNote triole |
	secondNote := self lastNote lastNote.
	firstNote := secondNote lastNote.
	firstNote parent ~= self lastNote parent ifTrue: [
			firstNote parent add: self lastNote.
			self lastNote parent removeAt: 1.].
	
	triole := OrderedCollection new add: firstNote; add: secondNote; add: self lastNote; yourself.
	triole do: [:note | note setTriole: triole].