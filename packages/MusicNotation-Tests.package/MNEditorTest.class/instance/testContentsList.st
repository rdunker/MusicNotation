tests
testContentsList
	| editor |
	editor := MNEditor new.
	editor updateContents: 'g4/8.g4/8.'.
	self assert: editor content contentsList = #('g4/8.' 'g4/8.') asOrderedCollection.
	
	editor updateContents: 
			'2 timesRepeat: [
			a/8 * 4.
			g/2.
		].g/2.'.
	self assert: editor content contentsList = #('2 timesRepeat: [
			a/8 * 4.
			g/2.
		].' 'g/2.') asOrderedCollection.
	
	editor updateContents: '2 timesRepeat: [ {c4 . d4 . e4 . f4} / 4 ].5 timesRepeat: [ {c4 . d4 . e4 . f4} / 4 ].'.
	self assert: editor content contentsList = #('2 timesRepeat: [ {c4 . d4 . e4 . f4} / 4 ].' '5 timesRepeat: [ {c4 . d4 . e4 . f4} / 4 ].') asOrderedCollection.
	
	editor updateContents: '"Alle meine Entchen"c4/8.'.
	self assert: editor content contentsList = #('"Alle meine Entchen"' 'c4/8.') asOrderedCollection.