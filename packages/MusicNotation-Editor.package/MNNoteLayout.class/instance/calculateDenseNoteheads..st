calculating
calculateDenseNoteheads: aBlock
	| filtered last other |
	last := self lines first + 42.
	other := OrderedCollection new.
	filtered := self lines select: [ :line | (last - line) abs >= 1
		ifTrue: [ last := line ] ifFalse: [ other add: line ];
		yourself ].
	^ aBlock value: filtered value: other