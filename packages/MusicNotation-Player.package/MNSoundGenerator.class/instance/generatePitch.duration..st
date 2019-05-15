generating
generatePitch: aPitch duration: aFraction
	| time |
	time := self convertDuration: aFraction.
	^ self sound soundForPitch: aPitch frequency dur: time loudness: self loudness