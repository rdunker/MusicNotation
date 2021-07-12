calculating
addNotesToTriole: aMNNoteMorph position: aNumber
	| note |
	
	note := self lastSymbol.
	note ifNotNil: [
		(note isNote) ifTrue: [
			(note shouldAddToTriole: aMNNoteMorph position: aNumber)
				ifTrue: [
					note addToTriole: aMNNoteMorph position: aNumber.
				]]].