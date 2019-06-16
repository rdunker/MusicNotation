accessing
explorerContents
	^ (super explorerContents
		select: [ :each | (each itemName = 'children') not ])
		addAll: self children explorerContents;
		yourself