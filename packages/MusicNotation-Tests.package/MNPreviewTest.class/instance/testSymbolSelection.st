tests
testSymbolSelection
	| editor preview noteMorph |
	
	editor := MNEditor new updateContents: 'c3/8.'.
	preview := (editor buildPreviewWith: ToolBuilder default) submorphs first.
	noteMorph := preview submorphs first submorphs first submorphs first submorphs fourth.
	self assert: (preview selectedSymbol isNil).
	noteMorph select.
	self assert: (noteMorph color = noteMorph selectedColor).
	self assert: (preview selectedSymbol = noteMorph).
	noteMorph select.
	self assert: (noteMorph color = noteMorph unselectedColor).
	self assert: (preview selectedSymbol isNil).