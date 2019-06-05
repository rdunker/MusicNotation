accessing
codePointsOf: anInteger reverseDo: aBlock
	| n |
	n := anInteger.
	[
		aBlock value: n \\ 10 + 16rE080.
		n := n // 10.
		n strictlyPositive
	] whileTrue.