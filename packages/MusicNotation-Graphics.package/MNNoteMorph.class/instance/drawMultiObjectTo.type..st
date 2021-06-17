accessing
drawMultiObjectTo: aNote type: aSymbol
	aNote
		ifNotNil: [
			aSymbol = #beam 
				ifTrue: [MNBeamDrawer canvas: self partCanvas startNote: self endNote: aNote lines: ((aNote note duration denominator) log2 - 2.0)];
				ifFalse: [MNBowDrawer canvas: self partCanvas startNote: self endNote: aNote]].
