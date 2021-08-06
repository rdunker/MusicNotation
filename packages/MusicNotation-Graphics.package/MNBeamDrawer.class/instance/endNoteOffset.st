constants
endNoteOffset
	| offset |
	offset := -2 * self beamExtent x + 0.45.
	self startNote noteLayout up not ifTrue: [offset := offset + 0.05].
	^ offset