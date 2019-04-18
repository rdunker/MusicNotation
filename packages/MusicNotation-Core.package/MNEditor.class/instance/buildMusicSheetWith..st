as yet unclassified
buildMusicSheetWith: aBuilder

	^ aBuilder pluggableScrollPaneSpec new
		model: self;
		frame: (LayoutFrame new
				leftFraction: 0 offset: 0;
				topFraction: 0 offset: 0;
				rightFraction: 1 offset: 0;
				bottomFraction: 1 offset: 0);
		children: (self buildMeasuresWith: aBuilder);
		yourself