toolbuilder
buildCodePaneWith: builder
	^ builder pluggableCodePaneSpec new
		model: self;
		getText: #contents; 
		setText: #contents:notifying:; 
		selection: #contentsSelection; 
		menu: #codePaneMenu:shifted:;
		frame: (0@0 corner: 1@1);
		yourself