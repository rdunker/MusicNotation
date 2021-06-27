calculating
addNotesToBeam: aMNNoteMorph position: aNumber
	| note |
	note := self lastSymbol.
	note ifNotNil: [
		(note isNote) ifTrue: [
			(note shouldAddToBeam: aMNNoteMorph position: aNumber)
				ifTrue: [
					note addToBeam: aMNNoteMorph position: aNumber.
				]]].