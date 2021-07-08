tests
testSymbolSelection
	| editor preview noteMorph |
	
	editor := MNEditor new.
	editor updateContents: 'c4/8.'.
	preview := editor openPreview submorphs first.
	preview projectSelector: #project.
	preview updateProject.
	self assert: (preview project = editor project).
	self assert: (preview project isNil = false).
	self assert: (preview submorphs first isNil = false).
	
	preview owner abandon.