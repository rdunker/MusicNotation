drawing
resetPositionAfter: aBlock
	| oldPosition |
	oldPosition := self position.
	aBlock value.
	self position: oldPosition.