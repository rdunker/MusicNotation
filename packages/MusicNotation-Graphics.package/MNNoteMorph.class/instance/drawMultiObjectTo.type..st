accessing
drawMultiObjectTo: aNote type: aSymbol
	aNote
		ifNotNil: [
			aSymbol = #beam 
				ifTrue: [MNBeamDrawer canvas: self partCanvas startNote: self endNote: aNote];
				ifFalse: [MNBowDrawer canvas: self partCanvas startNote: self endNote: aNote]].
