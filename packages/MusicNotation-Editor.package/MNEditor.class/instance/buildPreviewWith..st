building
buildPreviewWith: aBuilder
	| window |
	window := aBuilder pluggableWindowSpec new
		model: self;
		label: #previewLabel;
		extent: 600@200;
		children: { self buildProjectWith: aBuilder };
		color: Color blue;
		yourself.
	
	^ aBuilder build: window