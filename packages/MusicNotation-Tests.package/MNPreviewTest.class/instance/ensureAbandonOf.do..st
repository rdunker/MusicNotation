helper
ensureAbandonOf: aMorph do: aBlock
	[ aBlock value: aMorph ]
		ensure: [ aMorph abandon ].