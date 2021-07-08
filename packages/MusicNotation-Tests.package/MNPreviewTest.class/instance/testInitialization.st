tests
testInitialization
	| editor preview |
	
	editor := MNEditor new.
	editor updateContents: 'c4/8.'.
	preview := (editor buildPreviewWith: ToolBuilder default) submorphs first.
	preview projectSelector: #project.
	preview updateProject.
	self assert: (preview isKindOf: MNPreviewMorph).
	self assert: (preview project = editor project).