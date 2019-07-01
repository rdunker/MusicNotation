toolbuilder
buildEditorWith: aBuilder
	| window |
	window := aBuilder pluggableWindowSpec new
		model: self;
		label: #editorLabel;
		extent: 400@600;
		children: { self buildCodePaneWith: aBuilder };
		yourself.
	
	^ aBuilder build: window