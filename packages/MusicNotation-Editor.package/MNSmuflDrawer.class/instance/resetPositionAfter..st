as yet unclassified
resetPositionAfter: aBlock
	| oldPosition |
	oldPosition := self position.
	aBlock value.
	self position: oldPosition.