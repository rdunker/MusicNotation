calculating
calculateNoteheads: aBlock
	^ self hasDenseLines
		ifTrue: [ self calculateDenseNoteheads: aBlock ]
		ifFalse: [ aBlock value: self lines value: #() ]