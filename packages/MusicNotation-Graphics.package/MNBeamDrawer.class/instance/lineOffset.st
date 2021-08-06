calculating
lineOffset
	| sign |
	sign := -1 * self startNote noteLayout stemDirection.
	^ sign * self startNote noteLineHeight * 0.75