toolbuilder
buildCodePaneWith: aBuilder
	^ aBuilder pluggableCodePaneSpec new
		model: self;
		getText: #contents;
		setText: #updateContents:;
		menu: #codePaneMenu:shifted:;
		frame: self codeFrame;
		yourself