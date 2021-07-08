tests
testSymbolSelection
	| editor preview noteMorph |
	
	editor := MNEditor new.
	editor updateContents: 'c4/8.'.
	preview := editor openPreview submorphs first.
	preview projectSelector: #project.
	preview addMorphBack: (preview project asMorph).
	self assert: (preview submorphs first isNil = false).
	noteMorph := self firstNoteOfPreview: preview.
	self assert: (preview selectedSymbol isNil).
	noteMorph select.
	self assert: (noteMorph color = noteMorph selectedColor).
	self assert: (preview selectedSymbol = noteMorph).
	noteMorph select.
	self assert: (noteMorph color = noteMorph unselectedColor).
	self assert: (preview selectedSymbol isNil).
	preview owner abandon.