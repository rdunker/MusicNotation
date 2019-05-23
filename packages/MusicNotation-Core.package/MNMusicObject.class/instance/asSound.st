converting
asSound
	| soundGenerator |
	soundGenerator := MNSoundGenerator2 new.
	self accept: soundGenerator.
	^ soundGenerator soundSequence