tests
testInitialization
	| editor preview |
	
	editor := MNEditor new.
	editor updateContents: 'c4/8.'.
	preview := (editor buildPreviewWith: ToolBuilder default) submorphs first.
	self assert: (preview isKindOf: MNPreviewMorph).
	self assert: (preview model = editor).
	self assert: (preview project = editor project).