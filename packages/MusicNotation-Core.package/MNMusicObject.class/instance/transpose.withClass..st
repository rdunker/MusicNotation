as yet unclassified
transpose: halfSteps withClass: aTransposerClass
	| transpose |
	transpose := aTransposerClass new.
	transpose offset: halfSteps.
	self pitchesDo: transpose.