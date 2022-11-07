tests
testAddSounds
	"Ignore while linting"
	| generator note pitch testWithNote testWithPitch |
	
	generator := MNSoundGenerator new.
	pitch := MNPitch new
		octave: 4;
		step: $a;
		yourself.
	note := MNNote new
		duration: 1/4;
		addPitch: pitch;
		yourself.
		
	testWithNote := generator generateNote: note.
	testWithPitch := generator generatePitch: pitch duration: (1/4).
	
	generator addSound: testWithNote.
	generator addSound: testWithPitch.
	generator addSound: (generator generateNote: note).

	self assert: testWithNote equals: generator soundSequence sounds first.
	self assert: testWithPitch equals: generator soundSequence sounds second.