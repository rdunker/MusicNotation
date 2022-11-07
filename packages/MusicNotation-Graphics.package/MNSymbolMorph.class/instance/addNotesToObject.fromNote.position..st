calculating
addNotesToObject: aSymbol fromNote: aMNNoteMorph position: aNumber
	| note |
	
	note := self lastSymbol.
	note ifNotNil: [
		(note isNote) ifTrue: [
			(note shouldAddToObject: aSymbol fromNote: aMNNoteMorph position: aNumber)
				ifTrue: [
					note addToObject: aSymbol fromNote: aMNNoteMorph position: aNumber.
				]]].