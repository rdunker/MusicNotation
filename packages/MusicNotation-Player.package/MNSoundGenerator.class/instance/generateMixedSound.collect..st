generating
generateMixedSound: aCollection collect: aBlock
	| mixedSound |
	mixedSound := MixedSound new.
	aCollection do: [ :each |
		mixedSound add: (aBlock value: each) ].
	^ mixedSound