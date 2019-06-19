*MusicNotation-Player
asSound
	| soundGenerator |
	soundGenerator := MNSoundGenerator new.
	self accept: soundGenerator.
	^ soundGenerator soundSequence