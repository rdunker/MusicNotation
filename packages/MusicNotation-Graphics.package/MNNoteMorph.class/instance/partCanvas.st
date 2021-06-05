accessing
partCanvas

	^ self partMorph canvas asBalloonCanvas
			aaLevel: 4;
			copyClipRect: self partMorph bounds