drawing
isDiagonal
	| previousNote |
	previousNote := self notes before: self notes last.
	^ self isDiagonalTill: previousNote pitch: (self notes last noteLayout lines first - previousNote noteLayout lines first)
