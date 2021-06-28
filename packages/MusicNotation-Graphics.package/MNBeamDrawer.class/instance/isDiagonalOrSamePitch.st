drawing
isDiagonalOrSamePitch
	| previousNote |
	previousNote := self notes before: self notes last.
	^ self isDiagonalOrSamePitchTill: previousNote pitch: (self notes last noteLayout noteHeight - previousNote noteLayout noteHeight)
