tests
testTransposeProject
	"Ignore while linting"
	| project pitches pitchesTransposed |
	project := MNSong furElise project.	
		
	pitches := OrderedCollection new.
	project pitchesDo: [ :pitch | pitches add: pitch copy ].
	project transpose: 3.
	
	pitchesTransposed := OrderedCollection new.
	project pitchesDo: [ :pitch | pitchesTransposed add: pitch copy ].
	
	self assert: (pitches size = pitchesTransposed size).
	
	pitches keysAndValuesDo: 
		[ :key :pitch |
			| pitchTransposed |
			
			pitchTransposed := pitchesTransposed at: key.
			pitch transpose: 3.
			
			self assert: (pitch step = pitchTransposed step).
			self assert: (pitch octave = pitchTransposed octave).
			self assert: (pitch alter = pitchTransposed alter) ]