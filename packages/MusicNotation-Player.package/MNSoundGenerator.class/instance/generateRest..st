generating
generateRest: aFraction
	| time |
	time := self convertDuration: aFraction.
	^ RestSound dur: time