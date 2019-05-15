generating
generatePitches: aPitchCollection duration: aFraction
	sound := MixedSound new.
	aPitchCollection do: [ :each |
		sound add: (self generatePitch: each frequency duration: aFraction) ].
	^ sound