tests
testParseNote
	| note xmlNote |
	xmlNote := self parseXML: '<note><pitch><step>C</step><octave>4</octave></pitch><duration>1</duration></note>'.
	note := self xmlParser parseNote: xmlNote.
	
	self assert: 1 equals: note pitches size.
	self assert: 1 equals: note duration.