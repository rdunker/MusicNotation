building
buildProjectWith: aBuilder
	^ aBuilder mnPluggableCustomSpec new
		morphClass: MNPreviewMorph;
		model: self;
		project: #project;
		frame: (0@0 corner: 1@1);
		yourself