accessing
noteHeight: aMNNoteMorph isUp: aBoolean

|sign sign2 noteheight |

sign := 1.
sign2 := 1.
noteheight := aMNNoteMorph noteLineHeight.

aBoolean ifFalse: [
	aMNNoteMorph noteLayout up ifTrue: [
		sign := -1.
		noteheight := 2.
		]
	].
aMNNoteMorph noteLayout up ifFalse: [sign2 := -1].

	^ sign * (noteheight * ((aMNNoteMorph noteLayout lines at: 1) + (sign2 * 1)))

