generating
generateNote: aNote
	| time |
	time := self convertDuration: aNote duration.
	
	aNote pitches
		ifEmpty: [ ^ RestSound dur: time ].
	
	aNote pitches size = 1
		ifTrue: [ ^ self generatePitch: aNote pitches first duration: time ].
	
	^ self generateMixedSound: aNote pitches
		collect: [ :each | self generatePitch: each duration: time ]