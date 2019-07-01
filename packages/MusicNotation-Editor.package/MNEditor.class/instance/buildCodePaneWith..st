toolbuilder
buildCodePaneWith: builder
	| textSpec |
	textSpec := builder pluggableCodePaneSpec new.
	textSpec 
		model: self;
		frame: (LayoutFrame new
				leftFraction:0 offset:0;
				topFraction: 0 offset: self buttonHeight;
				rightFraction: 1 offset: 0;
				bottomFraction: 1 offset: 0);
		getText: #contents; 
		setText: #contents:notifying:; 
		selection: #contentsSelection; 
		menu: #codePaneMenu:shifted:.
	^textSpec