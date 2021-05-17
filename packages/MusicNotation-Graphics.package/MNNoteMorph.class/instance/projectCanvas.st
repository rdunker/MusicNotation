accessing
projectCanvas

	^ self project canvas asBalloonCanvas
			aaLevel: 4;
			copyClipRect: self project bounds