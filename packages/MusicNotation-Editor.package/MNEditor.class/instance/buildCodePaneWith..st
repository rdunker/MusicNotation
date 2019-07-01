toolbuilder
buildCodePaneWith: aBuilder
	^ aBuilder pluggableCodePaneSpec new
		model: self;
		getText: #contents; 
		setText: #contents:notifying:; 
		selection: #contentsSelection; 
		menu: #codePaneMenu:shifted:;
		frame: self codeFrame;
		yourself