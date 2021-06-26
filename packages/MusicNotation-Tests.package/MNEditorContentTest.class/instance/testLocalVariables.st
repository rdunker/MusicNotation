tests
testLocalVariables
	| content |
	content := MNEditorContent new.
	content updateContents: '| bass chords | bass := g4/8.'.
	self assert: (content localVariables keys includes: 'bass').
	self assert: (content localVariables keys includes: 'chords').
	
	content updateContents: '|    bass  chords| bass := g4/8.'.
	self assert: (content localVariables keys includes: 'bass').
	self assert: (content localVariables keys includes: 'chords').
	