testing
hasValidDuration
	[ self validateDuration ]
		on: MNInvalidValue
		do: [ ^ false ].
	^ true.