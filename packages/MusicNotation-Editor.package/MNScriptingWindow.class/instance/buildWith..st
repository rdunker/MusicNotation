toolbuilder
buildWith: aBuilder

	^ aBuilder build: (aBuilder pluggableWindowSpec new
		model: self;
		label: 'Music Workspace';
		extent: 500@400;
		children: { self buildMenuButtonsWith: aBuilder . self buildCodePaneWith: aBuilder };
		yourself)