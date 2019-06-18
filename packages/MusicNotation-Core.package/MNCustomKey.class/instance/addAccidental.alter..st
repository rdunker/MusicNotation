adding
addAccidental: step alter: alter
	self accidentals add:
		step asCharacter asLowercase ->
		alter asInteger.