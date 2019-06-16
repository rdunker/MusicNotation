accessing
explorerContents
	^ super explorerContents
		select: [ :each | (each itemName = 'parent') not ]