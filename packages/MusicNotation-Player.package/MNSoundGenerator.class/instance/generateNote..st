generating
generateNote: aNote
	| time |
	aNote tieStop ifTrue: [ ^ RestSound dur: 0 ].
	time := self convertDuration: aNote durationWithTies.
	
	aNote pitches
		ifEmpty: [ ^ RestSound dur: time ].
	
	aNote pitches size = 1
		ifTrue: [ ^ self generatePitch: aNote pitches first duration: time ].
	
	^ self generateMixedSound: aNote pitches
		collect: [ :each | self generatePitch: each duration: time ]