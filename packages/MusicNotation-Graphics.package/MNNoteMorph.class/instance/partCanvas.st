accessing
partCanvas
	^ self partMorph canvas asBalloonCanvas
			aaLevel: self aaLevel;
			copyClipRect: self partMorph bounds