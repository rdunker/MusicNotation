as yet unclassified
testParseEmptyNote

	| note xmlNote |
	xmlNote := self parseXML: '<note><duration>1</duration></note>'.
	note :=  self xmlParser parseNote: xmlNote.
	
	self assert: 0 equals: note pitches size.
	self assert: 1 equals: note duration.