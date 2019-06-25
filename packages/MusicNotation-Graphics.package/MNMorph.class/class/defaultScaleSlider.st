accessing
defaultScaleSlider
	^ BracketSliderMorph new
		extent: 200@40;
		minimumValue: 0.5;
		maximumValue: 4;
		model: self;
		getValueSelector: #defaultScale;
		setValueSelector: #defaultScale:;
		getValue;
		yourself