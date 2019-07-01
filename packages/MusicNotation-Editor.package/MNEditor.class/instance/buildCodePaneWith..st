toolbuilder
buildCodePaneWith: aBuilder
	^ aBuilder pluggableCodePaneSpec new
		model: self;
		getText: #contents;
		setText: #contents:;
		menu: #codePaneMenu:shifted:;
		frame: self codeFrame;
		yourself