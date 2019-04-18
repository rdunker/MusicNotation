as yet unclassified
buildWith: aBuilder

	^ aBuilder build: (aBuilder pluggableWindowSpec new
		model: self;
		label: 'MusicNotation';
		extent: 600@200;
		children: { self buildMusicSheetWith: aBuilder };
		yourself)